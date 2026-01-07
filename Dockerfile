# Use Ubuntu 22.04 as the base image (stable and compatible)
FROM ubuntu:22.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install essential build tools (GCC, Make)
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Build the project using the Docker-specific Makefile
RUN make -f Makefile.docker

# Default command: Run the application (or drop into a shell if preferred)
# Running a shell allows students to explore the 'bin' folder and run specific inputs.
CMD ["/bin/bash"]
