#include <stdio.h>
#include <string.h>

#include "rename.h"

void print_args(int argc, char* argv[]);

int main(int argc, char* argv[]) {

    // check arguments
    // first argument is always the program name, so length of argc must be >= 2
    if (argc < 2) {
        printf("exif9k: not enough arguments\n");
        return 0;
    } 
    else {

        // =================================
        // Rename
        // =================================
        if (strcmp(argv[1], "rename") == 0) {
            // get path
            if (argc < 3) {
                printf("exif9k: not enough arguments\n");
                printf("exif9k: usage: exif9k rename path/to/directory\n");
            }
            else {
                const char* path_str = argv[2];
                printf("exif9k: renaming files in %s\n", path_str);
                rename_photos(path_str);
            }
        }

        // =================================
        // Not a valid command
        // =================================
        else
            printf("exif9k: unknown command\n");
    }

    //print_args(argc, argv);

    return 0;
}

// =================================
// Print all arguments for debugging
// =================================
void print_args(int argc, char* argv[]) {
    for (int i = 0; i < argc; i++) {
        printf("argv[%d]: %s\n", i, argv[i]); 
    }
}
