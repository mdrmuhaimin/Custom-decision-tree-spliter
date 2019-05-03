conda install -c anaconda numpy -y
conda install -c anaconda cython -y
conda install -c anaconda pandas -y
conda install -c anaconda jupyter -y
conda install -c conda-forge pydotplus -y
conda install -c anaconda graphviz -y
conda install -c conda-forge matplotlib -y
git clone git@github.com:scikit-learn/scikit-learn.git
brew install libomp
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
export CPPFLAGS="$CPPFLAGS -Xpreprocessor -fopenmp"
export CFLAGS="$CFLAGS -I/usr/local/opt/libomp/include"
export CXXFLAGS="$CXXFLAGS -I/usr/local/opt/libomp/include"
export LDFLAGS="$LDFLAGS -L/usr/local/opt/libomp/lib -lomp"
export DYLD_LIBRARY_PATH=/usr/local/opt/libomp/lib
cd scikit-learn
pip install .

