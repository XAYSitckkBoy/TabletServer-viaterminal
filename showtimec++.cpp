#include <iostream>
#include <chrono>
#include <ctime>

int main() {
    // Get the current time point
    auto currentTime = std::chrono::system_clock::now();

    // Convert the time point to a time_t object
    std::time_t currentTime_t = std::chrono::system_clock::to_time_t(currentTime);

    // Convert the time_t object to a local time string
    char currentTimeString[100];
    std::strftime(currentTimeString, sizeof(currentTimeString), "%Y-%m-%d %H:%M:%S", std::localtime(&currentTime_t));

    // Print the current time
    std::cout << "Current time: " << currentTimeString << std::endl;

    return 0;
}
