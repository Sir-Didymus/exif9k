
#include <stdio.h>
#include <sys/stat.h>

#include "rename.h"

int rename_photos(const char* dir_path) {
    
    struct stat sb;

    // check if path exists and is a directory
    if (!(stat(dir_path, &sb) == 0 && S_ISDIR(sb.st_mode))) {
        printf("exif9k: not a directory: %s\n", dir_path);
        return 1;
    } else
        printf("exif9k: renaming files in directory: %s\n", dir_path);

    return 0;
}
