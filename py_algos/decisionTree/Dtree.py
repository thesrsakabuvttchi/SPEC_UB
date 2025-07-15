from sklearn.datasets import make_classification
from sklearn.tree import DecisionTreeClassifier
import emlearn

# Generate a larger synthetic classification dataset
X, y = make_classification(
    n_samples=10000000,        # 10,000 samples
    n_features=20,          # 20 input features
    n_informative=15,       # 15 informative features
    n_classes=5,            # 5 target classes
    random_state=42
)

# Train a bigger decision tree
clf = DecisionTreeClassifier(
    max_depth=25,           # deeper tree → more branches
    min_samples_split=2,
    min_samples_leaf=1
)
clf.fit(X, y)

# Convert to C using emlearn
cmodel = emlearn.convert(clf, method='inline')
cmodel.save(file='big_tree.h', name='big_tree')
