#include <stdio.h>

// Function for reversing array
void reverseArray(int arr[], int size) {
    int temp;

    // Iterate over (size / 2) and change left-coming array pointer with right-coming array pointer
    for (int i = 0; i < size / 2; i++) {
        temp = arr[i];              // Save the value in temporary variable

        arr[i] = arr[size - i - 1]; // Change the current index value with right-coming array pointer 
        arr[size - i - 1] = temp;   // Assign right-coming array pointer with current index value (which stored in temp) 
    }
}

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int size = sizeof(arr) / sizeof(arr[0]); // Getting length of array

    reverseArray(arr, size);

    // Iterate over array
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}
