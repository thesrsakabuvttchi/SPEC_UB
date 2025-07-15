import tensorflow as tf
import numpy as np
import pickle

# Load and preprocess the MNIST dataset
mnist = tf.keras.datasets.mnist
(train_images, train_labels), (test_images, test_labels) = mnist.load_data()
train_images, test_images = train_images, test_images

# Manually flatten the images
train_images_flat = train_images.reshape((train_images.shape[0], -1))
test_images_flat = test_images.reshape((test_images.shape[0], -1))

# Define a simple neural network model
model = tf.keras.models.Sequential([
    tf.keras.layers.Dense(100, activation='relu'),
    tf.keras.layers.Dense(10, activation='softmax'),
])

# Compile the model
model.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

# Train the model on the MNIST dataset
model.fit(train_images_flat, train_labels, epochs=5)

# Evaluate the model on the test set
test_loss, test_acc = model.evaluate(test_images_flat, test_labels)
print(f"\nTest accuracy: {test_acc}")

# Save the trained model to a .pkl file
model_weights = {}
for layer in model.layers:
    layer_name = layer.name
    layer_weights = layer.get_weights()
    model_weights[layer_name] = layer_weights

# Save model weights to a .pkl file
with open('mnist_model_weights_DNN.pkl', 'wb') as file:
    pickle.dump(model_weights, file)

gl_max = gl_min = "invalid"
for layer in model.layers:
    print(layer.name)
    layer_name = layer.name
    layer_weights = layer.get_weights()
    if(gl_max=="invalid" and gl_min=="invalid"):
        gl_max = max([np.max(w)for w in layer_weights])
        gl_min = min([np.min(w)for w in layer_weights])
        continue
    if(gl_max<max([np.max(w)for w in layer_weights])):
        gl_max  = max([np.max(w)for w in layer_weights])
    if(gl_min>min([np.min(w)for w in layer_weights])):
        gl_min = min([np.min(w)for w in layer_weights])

print(gl_max,gl_min)
quantized_model_weights = {}
for layer in model.layers:
    print(layer.name)
    layer_name = layer.name
    layer_weights = layer.get_weights()
    # Quantize weights using TensorFlow's quantization API
    quantized_weights = [((w)*127/ (gl_max-gl_min)).astype(np.int8) for w in layer_weights]
    quantized_model_weights[layer_name] = quantized_weights

# Save quantized model weights to a .pkl file
with open('mnist_quantized_model_weights.pkl', 'wb') as file:
    pickle.dump(quantized_model_weights, file)

model2 = tf.keras.models.Sequential([
    tf.keras.layers.Dense(100, activation='relu'),
    tf.keras.layers.Dense(10, activation='softmax'),
])
model2.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])
model2.fit(train_images_flat, train_labels, epochs=1)

for i,layer in enumerate(model.layers):
    layer_name = layer.name
    quantized_weights = quantized_model_weights[layer_name]
    model2.layers[i].set_weights(quantized_weights)

test_loss, test_acc = model2.evaluate(test_images_flat, test_labels)
print(f"\nTest accuracy Quantized: {test_acc}")

input = test_images_flat[0]
lablel = test_labels[0]

dense = quantized_model_weights['dense']
dense1 = quantized_model_weights["dense_1"]


# for i,input in enumerate(test_images_flat):
#     intermediate = np.matmul(input,dense[0])+dense[1]
#     intermediate = [i if i>0 else 0 for i in intermediate]
#     result = np.matmul(intermediate,dense1[0])+dense1[1]
#     print(result,np.argmax(result),test_labels[i])


with open("weight_file_DNN.txt","w") as wf:
  for i in quantized_model_weights:
      weights = quantized_model_weights[i][0]
      biases = quantized_model_weights[i][1]
      wf.write("Weights:\n")
      for i in weights:
        i = [str(j) for j in i]
        wf.write("\t".join(i))
        wf.write("\n")
      wf.write("Biases:\n")
      biases = [str(j) for j in biases]
      wf.write("\t".join(biases))
      wf.write("\n")

with open("input_file.txt","w") as inf:
    for i in range(len(test_images_flat)):
        test_input = test_images_flat[i]
        test_input = [str(i) for i in test_input]
        inf.write("Input:\n")
        inf.write(" ".join(test_input))
        inf.write("\n")
        inf.write("Label:"+str(test_labels[i])+"\n")
    inf.write("END\n")