Carbon Integration Guide
About Carbon Language
Carbon is an experimental programming language being developed by Google as a potential successor to C++. It's designed to:

Provide modern language features
Offer seamless C++ interoperability
Maintain high performance
Support gradual migration from C++
Project Structure for Carbon Interop
This project demonstrates Carbon/C++ interoperability patterns:

Carbon File (src/main.carbon)
The Carbon implementation shows how the application would be written in Carbon:

Uses import Cpp to access C++ libraries
Calls C++ functions through the interop layer
Demonstrates Carbon syntax and package structure
C++ Implementation
The C++ files serve dual purposes:

Current Implementation: Fully functional
Carbon Interop Layer: Will be interfaced by Carbon code when compiled
src/
├── main.carbon      # Carbon main (reference implementation)
└── main.cc          # C++ main (current implementation)
Building (Current)
Since Carbon toolchain is not yet stable, the project currently builds using C++:

make
Future Carbon Build
When Carbon becomes production-ready, the build process will be:

# Example future Carbon build command
carbon build src/main.carbon --cpp-interop
The Carbon compiler will:

Parse main.carbon
Generate C++ interop code
Link with existing C++ modules
Produce the final executable
Carbon Syntax Highlights

Why This Design?
Ready for Carbon: The architecture is prepared for Carbon migration
Functional Now: Works with current C++ compilers
Learning Resource: Demonstrates Carbon interop patterns
Migration Path: Shows how to gradually adopt Carbon
Resources
Carbon Language
Carbon Documentation
C++ Interop Design
Contributing
When contributing, please:

Keep the Carbon reference implementation in sync with C++ changes
Follow Carbon syntax guidelines in .carbon files
Ensure C++ code remains interop-friendly (avoid advanced templates, use simple types)