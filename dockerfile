FROM ubuntu:24.04

COPY . /

# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    clang \
    cmake \
    git \
    vim \
    wget \
    zlib1g-dev \
    libncurses-dev \
    libgmp-dev \
    libreadline-dev \
    libssl-dev \
    libedit-dev \
    libunwind-dev \
    lsb-release \
    gnuplot

# Install python system-wide
RUN apt-get install -y \
    python3 \
    python3-pip \
    python3-matplotlib

# Install SBCL (Steel Bank Common Lisp)
RUN apt-get install -y clisp

# Install SWI-Prolog
RUN apt-get install -y swi-prolog

# Install Clojure
RUN apt-get install -y clojure

# Set default C compiler to clang
ENV CC=/usr/bin/clang

# Set working directory
WORKDIR /work

# Expose ports for development
EXPOSE 3000
EXPOSE 4000

# Set default command
CMD ["bash"]
