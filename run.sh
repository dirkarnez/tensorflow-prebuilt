export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/opt/bin:/c/Windows/System32:/c/Windows:/c/Windows/System32/WindowsPowerShell/v1.0/:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"


# export PATH="/c/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.0/bin:$PATH"
# export PATH="/c/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.0/extras/CUPTI/libx64:$PATH"
export PATH="/C/Users/Administrator/Downloads/python-3.8.10-amd64-portable:/C/Users/Administrator/Downloads/python-3.8.10-amd64-portable/Scripts:$PATH"
export PATH="/C/Users/Administrator/Downloads/PortableGit/bin:$PATH"
export PATH="/C/Windows/System32:$PATH"

export JAVA_HOME="/C/Users/Administrator/Downloads/bazel-v5.3.2-msys2-mingw64-x86_64-posix-seh-rev0-8.1.0/openjdk-11.0.1_windows-x64_bin/jdk-11.0.1/bin"
# export BAZEL_SH=%ROOT%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\bin\bash

# git checkout -f v2.6.0
# bazel version before 3.9
export MSYS_NO_PATHCONV=1
export MSYS2_ARG_CONV_EXCL="*"

cd /C/Users/Administrator/Downloads/tensorflow &&
pacman -S patch unzip
python -m pip install numpy
python ./configure.py
gcc --version &&
ls &&
bazel build --config=opt --define=no_tensorflow_py_deps=true  //tensorflow/tools/lib_package:libtensorflow --verbose_failures
# bazel build --compiler=mingw-gcc //cc/google/fhir/...  --verbose_failures &&^
read -p "sdfsd"
