# Discord Bad Domains

## Overview
This repository contains a script to fetch and update bad domain hashes from specified URLs. It automatically updates these hashes in text files using GitHub Actions.

## How to Set Up for Yourself

To set up this project for your own use, follow these steps:

### 1. Fork the Repository
- Click the "Fork" button on the top right of this repository page to create your own copy.

### 2. Clone Your Forked Repository
- Open your terminal and navigate to the directory where you want to clone your repository. Run:
  ```bash
  git clone https://github.com/YOUR_USERNAME/discord-bad-domains.git
  ```
- Replace `YOUR_USERNAME` with your GitHub username.

### 3. Navigate to Your Repository Directory
Change into the directory of your cloned repository:
```bash
cd discord-bad-domains
```

### 4. Make the Script Executable
To make the `fetch_hashes.sh` script executable, follow these steps:

1. Run the following command:
   ```bash
   chmod +x scripts/fetch_hashes.sh
   ```

2. Verify the script is executable by listing the files with the `-l` option:
   ```bash
   ls -l scripts/fetch_hashes.sh
   ```
   You should see an output like this:
   ```
   -rwxr-xr-x 1 user group size date scripts/fetch_hashes.sh
   ```
   The key part is `rwx` in the first set of permissions (`r` for read, `w` for write, and `x` for execute).

Once you've made the script executable, it can be run automatically by GitHub Actions or manually from the command line using:
```bash
./scripts/fetch_hashes.sh
```

### 5. Check Repository Permissions
Ensure your GitHub Actions workflow has the necessary permissions to push changes to your repository:

- Go to your repository on GitHub.
- Navigate to **Settings** → **Actions** → **General**.
- In the **Workflow permissions** section, ensure that **Read and write permissions** are selected. This allows GitHub Actions to push changes to your repository.

### 6. Push the Updated Workflow
After making any necessary changes to your workflow (e.g., `update_hashes.yml`), commit and push these changes to GitHub. The workflow should now be able to authenticate correctly when trying to push updates.

### 7. Test the Workflow
You can manually trigger the workflow by going to the **Actions** tab in your repository, selecting the workflow, and clicking the **Run workflow** button.

## Conclusion
This setup ensures that you always have the latest bad domain hashes. Feel free to contribute or modify the project as needed!
```

### Changes Made:
- **Added Overview**: A brief introduction to the project.
- **Improved Structure**: Each step is clearly numbered and labeled for better readability.
- **Simplified Language**: Made the instructions clearer and more concise.
- **Formatted Code Blocks**: Ensured proper formatting for command lines and outputs.