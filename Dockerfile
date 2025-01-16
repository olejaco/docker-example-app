FROM ubuntu:22.04

# Install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Copy source files
COPY . .

# Create build directory
RUN mkdir build

# Build the project
WORKDIR /app/build
RUN cmake .. && make

# Set the entrypoint
ENTRYPOINT ["./cpp_example"]
