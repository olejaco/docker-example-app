# C++ Example Project

This is a simple C++ project that can be built both on Windows and in a Docker container.

## Building on Windows

1. Make sure you have CMake and a C++ compiler (like MSVC or MinGW) installed
2. Open a terminal in the project directory
3. Create and enter the build directory:
   ```
   mkdir build
   cd build
   ```
4. Generate build files and build the project:
   ```
   cmake ..
   cmake --build .
   ```
5. Run the executable:
   ```
   .\Debug\cpp_example.exe
   ```

## Building with Docker

1. Make sure you have Docker installed
2. Open a terminal in the project directory
3. Build the Docker image:
   ```
   docker build -t cpp-example .
   ```
4. Run the container:
   ```
   docker run cpp-example
   ```

## Project Structure

- `src/main.cpp`: Main source file containing the example code
- `CMakeLists.txt`: CMake configuration file for building the project
- `Dockerfile`: Docker configuration for containerized building and running
- `.gitignore`: Specifies which files Git should ignore
