from sklearn.datasets import load_iris
from sklearn.naive_bayes import GaussianNB
import emlearn

# Load data
data = load_iris()
X = data.data
y = data.target

# Train Gaussian Naive Bayes
clf = GaussianNB()
clf.fit(X, y)

# Convert to emlearn C model
cmodel = emlearn.convert(clf)  # No 'inline' option for this model
cmodel.save(file='iris_nb.h', name='iris_nb')