#include <stdio.h>
#include <vector>

int lastRemainingNumber(int n) {
    // Creating a vector for general purpose
    std::vector<int> numbers;
    
    // Loop through 1 to n, and push back the value `i` to vector
    for (int i = 1; i <= n; i++) {
        numbers.push_back(i);
    }

    // We have 3 types in this game following in the index:
    // 0 - Remove even placed index values
    // 1 - Remove odd placed index values
    // 2 - Remove index values which are divisible by 3
    // First, it should start from `0`
    int roundType = 0; 

    // Loop through and check if the array size is greater than, otherwise break the loop
    while (numbers.size() > 1) {
        // Create temporary filter array
        std::vector<int> filtered;

        // Condition 0 where Remove even placed index values
        if (roundType == 0) {
            for (int i = 0; i < numbers.size(); i++) {
                // If the value is odd, Then add it to filter array, otherwise, omit that
                if ((i + 1) % 2 != 0) {
                    filtered.push_back(numbers[i]);
                }
            }
        } 

        // Condition 1 where Remove odd placed index values
        else if (roundType == 1) {
            for (int i = 0; i < numbers.size(); i++) {
                // If the value is even, Then add it to filter array, otherwise, omit that
                if ((i + 1) % 2 == 0) {
                    filtered.push_back(numbers[i]);
                }
            }
        } 

        // Condition 2 where index values which are divisible by 3
        else if (roundType == 2) {
            for (int i = 0; i < numbers.size(); i++) {
                // If the value is not divisible by 3, Then add it to filter array, otherwise, omit that
                if ((i + 1) % 3 != 0) {
                    filtered.push_back(numbers[i]);
                }
            }
        }

        // Assign the filtered value to the general purpose vector
        numbers = filtered;

        // Increment roundType by 1 to go next stage
        roundType = (roundType + 1) % 3;
    }

    // Return first value in vector
    return numbers[0];
}

int main() {
    int n;

    // Input from user
    scanf("%d", &n);

    // Output the corresponding value to console
    printf("%d", lastRemainingNumber(n));
}