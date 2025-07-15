from sklearn.datasets import load_iris
from sklearn.ensemble import RandomForestClassifier
import emlearn

# Load Iris dataset
data = load_iris()
X = data.data
y = data.target

# Train RandomForest (larger than default to increase branching)
clf = RandomForestClassifier(
    n_estimators=50,      # 50 trees
    max_depth=10,         # increase depth for more branches
    random_state=42
)
clf.fit(X, y)

# Export to C (inline prediction)
cmodel = emlearn.convert(clf, method='inline')
cmodel.save(file='iris_forest.h', name='iris_forest')
