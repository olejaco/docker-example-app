# Build stage
FROM ubuntu:22.04 AS builder

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    && rm -rf /var/lib/apt/lists/*

# Create and set build directory
WORKDIR /build

# Copy source files
COPY . .

# Configure and build the project
RUN cmake -B build && \
    cmake --build build

# Runtime stage
FROM ubuntu:22.04

# Copy only the built executable from builder stage
COPY --from=builder /build/build/cpp_example /app/cpp_example

# Set working directory
WORKDIR /app

# Set the entrypoint
ENTRYPOINT ["./cpp_example"]
