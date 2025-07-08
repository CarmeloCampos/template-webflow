# Webflow Local Development Template

This project provides a simple environment for running and testing Webflow templates locally.

## Prerequisites

Before you begin, ensure you have the following installed:

*   **Python 3:** Required to run the local web server. You can download it from [python.org](https://www.python.org/).
*   **Unzip:** Required to extract the Webflow template files.
    *   **macOS/Linux:** Usually pre-installed. If not, use your system's package manager (e.g., `sudo apt-get install unzip` on Debian/Ubuntu, `brew install unzip` on macOS).
    *   **Windows:** You might need to install a tool like 7-Zip or WinRAR, or ensure the built-in Windows extractor can handle `.zip` files from the command line (or use Git Bash which often includes `unzip`).

## Getting Started

Follow these steps to get your Webflow template running locally:

1.  **Download Your Webflow Template:**
    *   Go to your Webflow project settings.
    *   Click on the "Hosting" tab.
    *   Scroll down to the "Export Code" button and click it.
    *   Prepare and download the ZIP file.

2.  **Place the ZIP File:**
    *   Move the downloaded ZIP file into the root directory of this project.

3.  **Unzip the Template:**
    *   Open your terminal or command prompt.
    *   Navigate to the root directory of this project.
    *   Run the unzip script:
        ```bash
        bash unzip.sh
        ```
    *   This will create a `web` directory (or replace it if it already exists) containing your Webflow site files.

4.  **Run the Local Server:**
    *   In the same terminal, run the Python server:
        ```bash
        python server.py
        ```
    *   You should see a message like `Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...`.

5.  **View Your Site:**
    *   Open your web browser and go to [http://localhost:8000](http://localhost:8000).
    *   You should see your Webflow site running locally.

6.  **Stopping the Server:**
    *   To stop the local server, go back to your terminal and press `Ctrl+C`.

## Important Notes

*   **Overwriting Content:** The `unzip.sh` script will **delete** the entire `web` directory and its contents before unzipping the new template. Make sure you don't have any unsaved changes in the `web` directory if you re-run the script.
*   **Gitignore:** The `.gitignore` file is configured to ignore `*.zip` files. This is to prevent accidentally committing large template zip files to your repository. You should only commit the extracted code in the `web` directory if needed.
*   **Custom Port:** The server runs on port 8000 by default. If you need to use a different port, you can set the `PORT` environment variable before running the server:
    ```bash
    export PORT=8080 # For Linux/macOS
    # set PORT=8080 # For Windows Command Prompt
    # $env:PORT="8080" # For Windows PowerShell
    python server.py
    ```
