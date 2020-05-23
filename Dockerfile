FROM ubuntu

RUN apt update -y && \
    apt install g++-mingw-w64-x86-64 scons pkg-config -y --no-install-recommends && \
    echo "1"| update-alternatives --config x86_64-w64-mingw32-gcc && \
    echo "1"| update-alternatives --config x86_64-w64-mingw32-g++

CMD scons p=windows -j5


