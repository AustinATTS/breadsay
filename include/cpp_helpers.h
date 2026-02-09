#ifndef CPP_HELPERS_H
#define CPP_HELPERS_H

#include <string>
#include <iostream>

namespace CppHelpers {
    inline void PrintString(const std::string& s) {
        std::cout << s;
    }

    inline void PrintLine(const std::string& s) {
        std::cout << s << std::endl;
    }

    inline std::string CharToString(char c) {
        return std::string(1, c);
    }

    inline int g_argc = 0;
    inline char** g_argv = nullptr;

    inline int GetArgCount() {
        return g_argc;
    }

    inline std::string GetArguments() {
        std::string result;
        for (int i = 1; i < g_argc; i++) {
            if (i > 1) result += " ";
            result += g_argv[i];
        }
        return result;
    }

    inline void InitArgs(int argc, char* argv[]) {
        g_argc = argc;
        g_argv = argv;
    }
}

#endif // CPP_HELPERS_H
