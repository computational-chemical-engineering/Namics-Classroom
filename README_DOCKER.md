# Docker Instructions

Docker provides a failsafe way to run Namics by creating a self-contained Linux environment.

## Prerequisites
1. Install **Docker Desktop** for your OS (Windows, Mac, or Linux):  
   [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)

## Obtaining the Docker Image

You can either download the pre-built image or build it yourself.

### Option 1: Pull from GitHub Container Registry
Run the following command in your terminal:

   ```bash
   docker pull ghcr.io/computational-chemical-engineering/namics-classroom:latest
   ```

### Option 2: Build Locally
1. Open your terminal (Command Prompt, PowerShell, or Terminal). **Note:** On Windows, you may need to run your terminal as an **Administrator**.
2. Navigate to this directory (`Namics-Classroom`).
3. Run the following command to build the Docker image (this may take a few minutes the first time):

   ```bash
   docker build -t namics-image .
   ```

## Running the Code
To run the container and access the built `namics` executable, use the following command.  
We use the `-v` flag to "mount" your current directory into the container. This means:
 - You can edit input files in your normal Windows/Mac editor.
 - The output files created by Namics will appear in your Windows/Mac folder.

If you **built the image locally**:
   ```bash
   docker run -it --rm -v .:/app namics-image
   ```

If you **pulled the image from GitHub**:
   ```bash
   docker run -it --rm -v .:/app ghcr.io/computational-chemical-engineering/namics-classroom:latest
   ```

Once inside the container prompt (which looks like `root@xxxx:/app#`), you can run the program:

   ```bash
   ./bin/namics
   ```

## Example Usage
If you have an input file in `example_inputs/my_input.in`:

   ```bash
   ./bin/namics example_inputs/my_input.in
   ```

When you are finished, type `exit` to close the container.

## Cleanup
To remove the image later if you need to save space:
   ```bash
   docker rmi namics-image
   # or
   docker rmi ghcr.io/computational-chemical-engineering/namics-classroom:latest
   ```
