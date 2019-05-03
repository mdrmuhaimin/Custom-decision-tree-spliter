#### Sci-kit Installation Option for MAC-OSX

- Install the following packages
    - Cython
    - Numpy
- clone scikit-learn using `git clone git@github.com:scikit-learn/scikit-learn.git`
- Install homebrew
- run `brew install libomp`
- run

    ````
    export CC=/usr/bin/clang
    export CXX=/usr/bin/clang++
    export CPPFLAGS="$CPPFLAGS -Xpreprocessor -fopenmp"
    export CFLAGS="$CFLAGS -I/usr/local/opt/libomp/include"
    export CXXFLAGS="$CXXFLAGS -I/usr/local/opt/libomp/include"
    export LDFLAGS="$LDFLAGS -L/usr/local/opt/libomp/lib -lomp"
    export DYLD_LIBRARY_PATH=/usr/local/opt/libomp/lib
    ````
