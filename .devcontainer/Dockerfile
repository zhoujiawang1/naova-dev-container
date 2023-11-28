# Use the preconfigured C++ dev container image
FROM ubuntu:22.04

# Set non-interactive timezone configuration
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Montreal

# Create a directory for your project
RUN mkdir -p /workspaces/devcontainer-test 

# Change ownership and permissions of the project directory (as root)
RUN chmod -R 777 /workspaces/devcontainer-test

# Update repositories and install development tools
RUN  apt-get update
RUN  apt-get install -y \
    git \
    dbus \
    cmake \
    libasound-dev \
    libqt5opengl5-dev \
    lld \
    llvm \
    net-tools \
    ninja-build \
    pigz \
    rsync \
    wish \
    xxd \
    clang \
    make \
    build-essential \
    qt5* \
    qtcreator \
    qtbase5-dev \
    qtbase5-dev-tools \
    libqt5svg5-dev \
    libglew-dev \
    libxml2-dev \
    graphviz \
    xterm \
    freeglut3-dev \
    libglu1-mesa-dev \
    mesa-common-dev \
    libxmlsec1-dev \ 
    mingw-w64 
