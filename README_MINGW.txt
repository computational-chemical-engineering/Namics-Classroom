COMPILATION INSTRUCTIONS FOR MINGW UCRT64 (WINDOWS)
=====================================================

1.  Open your MinGW UCRT64 terminal (MSYS2).

2.  Navigate to this directory.

3.  (First time only) Install dependencies by running:
    
    sh install_dependencies.sh

4.  Run the following command to compile:
    
    make -f Makefile.mingw

4.  The executable 'namics.exe' will be created in the 'bin' directory.

5.  To clean the build (remove object files and executable):

    make -f Makefile.mingw clean

NOTES:
- The code has been modified to support Windows by conditionally including <io.h> instead of <unistd.h>.
- The Makefile.mingw is specifically tuned for the UCRT64 environment.
- Ensure you have the 'make' package installed in your MSYS2 environment (pacman -S make).
