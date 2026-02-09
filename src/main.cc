#include <iostream>
#include <string>
#include <vector>
#include <sstream>

using namespace std;

void printBreadArt() {
    cout << "        \\" << endl;
    cout << "         \\" << endl;
    cout << "          ___________" << endl;
    cout << "         /           \\" << endl;
    cout << "        /   ~~~~~~    \\" << endl;
    cout << "       |   ~~~~~~~~    |" << endl;
    cout << "       |  ~~~~~~~~~~   |" << endl;
    cout << "       |   ~~~~~~~~    |" << endl;
    cout << "       |    ~~~~~~     |" << endl;
    cout << "        \\             /" << endl;
    cout << "         \\_..._____../" << endl;
    cout << "           Bread" << endl;
}

void displayBread(const string& message) {
    size_t msgLen = message.length();

    cout << " ";
    for (size_t i = 0; i < msgLen + 2; i++) {
        cout << "_";
    }
    cout << endl;

    cout << "< " << message << " >" << endl;

    cout << " ";
    for (size_t i = 0; i < msgLen + 2; i++) {
        cout << "-";
    }
    cout << endl;

    printBreadArt();
}

int main(int argc, char* argv[]) {
    string message;

    if (argc > 1) {
        for (int i = 1; i < argc; i++) {
            if (i > 1) message += " ";
            message += argv[i];
        }
    } else {
        message = "Hello from breadsay!";
    }

    displayBread(message);

    return 0;
}
