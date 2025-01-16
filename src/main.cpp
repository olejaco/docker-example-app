#include <iostream>
#include <string>
#include <vector>

class MessagePrinter {
public:
    void addMessage(const std::string& msg) {
        messages.push_back(msg);
    }

    void printMessages() const {
        std::cout << "Stored messages:" << std::endl;
        for (const auto& msg : messages) {
            std::cout << "- " << msg << std::endl;
        }
    }

private:
    std::vector<std::string> messages;
};

int main() {
    std::cout << "C++ Example Project" << std::endl;
    
    MessagePrinter printer;
    printer.addMessage("Hello from C++!");
    printer.addMessage("This project works both on Windows and Docker!");
    printer.printMessages();

    return 0;
}
