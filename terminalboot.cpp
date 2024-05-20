#include <iostream>
#include <string>

int main() {
    std::string input;

    // Loop indefinitely until the user enters "exit"
    while (true) {
        // Display a prompt
        std::cout << ">> ";

        // Read a line of input from the user
        std::getline(std::cin, input);

        // Check if the user entered "exit" to quit the program
        if (input == "exit") 
