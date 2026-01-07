# Docker Instructions

Docker provides a failsafe way to run Namics by creating a self-contained Linux environment.

## Prerequisites
1. Install **Docker Desktop** for your OS (Windows, Mac, or Linux):  
   [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)

## Obtaining the Docker Image

You can either download the pre-built image or build it yourself.

### Option 1: Pull from Docker Hub (Recommended)
**Using the Terminal:**
Run the following command:

   ```bash
   docker pull eajfpeters/namics-classroom:latest
   ```

**Using Docker Desktop (GUI):**
1. Open the **Docker Desktop** application.
2. In the top search bar, type `eajfpeters/namics-classroom`.
3. Select the image and click **Pull**.

### Option 2: Build Locally
1. Open your terminal (Command Prompt, PowerShell, or Terminal). **Note:** On Windows, you may need to run your terminal as an **Administrator**.
2. Navigate to this directory (`Namics-Classroom`).
3. Run the following command to build the Docker image:

   ```bash
   docker build -t namics-image .
   ```

## Running the Code

### Using the Terminal (Recommended)
To run the container and access the `namics` executable, use the command corresponding to how you obtained the image. We use the `-v` flag to "mount" your current directory so that input/output files are synced with your host machine.

If you **built the image locally**:
   ```bash
   docker run -it --rm -v .:/app namics-image
   ```

If you **pulled the image from Docker Hub**:
   ```bash
   docker run -it --rm -v .:/app eajfpeters/namics-classroom:latest
   ```

### Using Docker Desktop (GUI)
1. Go to the **Images** tab in Docker Desktop.
2. Find `namics-classroom` or `namics-image` in the list.
3. Click the **Run** button (play icon).
4. **Important:** Click **Optional settings**:
   - **Host path:** Select your `Namics-Classroom` folder.
   - **Container path:** Enter `/app`.
   - **Interactive & TTY (-it):** Ensure this is enabled if prompted, or use the terminal approach for better control.
5. Click **Run**.
6. Go to the **Containers** tab, select your running container, and click the **Terminal** tab to start using `./bin/namics`.

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
   docker rmi eajfpeters/namics-classroom:latest
   ```
