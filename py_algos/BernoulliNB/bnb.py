from sklearn.datasets import load_iris
from sklearn.naive_bayes import BernoulliNB
import emlearn
import numpy as np

# Load dataset
data = load_iris()
X = data.data
y = data.target

# Force binary features by applying threshold binarization
clf = BernoulliNB(binarize=3.0)  # simple threshold
clf.fit(X, y)

# Convert and export to C
cmodel = emlearn.convert(clf)
cmodel.save(file='iris_bernb.h', name='iris_bernb')
