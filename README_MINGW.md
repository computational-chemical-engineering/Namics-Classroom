# Compilation Instructions for MinGW UCRT64 (Windows)

1.  Open your MinGW UCRT64 terminal (MSYS2).

2.  Navigate to this directory.

3.  **(First time only)** Install dependencies by running:
    ```bash
    sh install_dependencies.sh
    ```

4.  Run the following command to compile:
    ```bash
    make -f Makefile.mingw
    ```

5.  The executable `namics.exe` will be created in the `bin` directory.

6.  To clean the build (remove object files and executable):
    ```bash
    make -f Makefile.mingw clean
    ```

### Notes
- The code has been modified to support Windows by conditionally including `<io.h>` instead of `<unistd.h>`.
- The `Makefile.mingw` is specifically tuned for the UCRT64 environment.
