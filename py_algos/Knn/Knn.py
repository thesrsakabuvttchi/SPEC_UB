from sklearn.datasets import load_iris
from sklearn.neighbors import KNeighborsClassifier
import emlearn

# Load the dataset
data = load_iris()
X = data.data
y = data.target

# Train KNN with brute force and Euclidean distance (required for emlearn)
knn = KNeighborsClassifier(
    n_neighbors=3,
    algorithm='brute',
    metric='euclidean'
)
knn.fit(X, y)

# Convert and save to C code
cmodel = emlearn.convert(knn)
cmodel.save(file='iris_knn.h', name='iris_knn')
