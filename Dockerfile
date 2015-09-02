FROM fedora:latest
MAINTAINER Ralph Giles <giles@mozilla.org>

# Install tools
RUN dnf install -y git which make gcc gcc-c++

# Install dependencies
RUN dnf install -y glib2-devel freetype-devel fontconfig-devel
RUN dnf install -y glfw-devel mesa-libGLU-devel
RUN dnf install -y openssl-devel tar

# Check out and build
RUN git clone https://github.com/servo/servo
RUN cd servo && ./mach build --dev
