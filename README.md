# breadsay

Like cowsay or ponysay, but breadier! A fun command-line tool that displays messages in a speech bubble with ASCII art bread.

## About

breadsay is a simple command-line tool that displays messages in a bread-themed format. It's designed to work on Linux platforms, with primary focus on Arch and Ubuntu distributions.

## Features

- Beautiful bread-themed ASCII art
- Build with Bazel or traditional Makefile
- Easy installation and uninstallation scripts
- Fast and lightweight
- Written with Carbon/C++ interop principles

## Carbon Language Integration

This project demonstrates Carbon language design patterns with C++ interoperability:
- **`src/main.carbon`** - Carbon language version (reference implementation)
- **`src/main.cc`** - C++ implementation that Carbon would compile to
- **C++ modules** - Core functionality that Carbon interfaces with

Carbon is an experimental language being developed by Google as a potential C++ successor. This project is structured to be ready for Carbon compilation once the toolchain is stable.

## Building

### Prerequisites

- C++ compiler (g++ or clang++)
- Make or CMake
- Linux operating system

### Build with Make

```bash
make
```

### Build with CMake

```bash
mkdir build
cd build
cmake ..
make
```

## Installation

### Quick Install (Recommended)

```bash
./install.sh
```

This will build and install breadsay to:
- `/usr/local/bin/` (if run with sudo)
- `~/.local/bin/` (if run as normal user)

### From Source

```bash
make
sudo make install
```

This will install breadsay to `/usr/local/bin/`.

### Manual Installation

```bash
make
sudo cp breadsay /usr/local/bin/
```

## Usage

Simply run:

```bash
breadsay
```

## Uninstallation

### Quick Uninstall

```bash
./uninstall.sh
```

### Manual Uninstall

```bash
sudo make uninstall
```

Or manually:

```bash
sudo rm /usr/local/bin/breadsay
```

## Platform Support

- Ubuntu (tested on 24.04 LTS)
- Arch Linux
- Other Linux distributions (should work on most systemd-based distros)

## Project Structure

```
breadsay/
├── src/
│   ├── main.cpp            # C++ implementation
│   ├── main.carbon         # Carbon implementation
│   └── BUILD               # C++ helper functions for Carbon interop
├── BUILD                   # Bazel build configuration
├── MODULE.bazel            # Bazel module configuration
├── Makefile                # Traditional make build system
├── install.sh              # Installation script
├── uninstall.sh            # Uninstallation script
└── README.md               # This file
```

## Development

### Future Carbon Integration

When the Carbon compiler becomes stable, the project can be built using:

```bash
# Future Carbon build command (when available)
carbon build src/main.carbon
```

The current C++ implementation serves as the Carbon interop layer and demonstrates the intended architecture.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues.

## License

See the LICENSE file for details.

## Acknowledgments

Inspired by:
- cowsay
- ponysay
- Carbon Language Project