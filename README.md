# Dotfiles Setup Repository

This repository is designed to help users set up their environment easily, including configurations for `nvim`, `zshrc`, and other settings. The setup is efficient and works seamlessly across Linux and macOS systems.

## Prerequisites

Ensure you have the following installed in your system:
- `stow` (GNU Stow)
- A terminal or shell of your choice

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/pythonhubdev/dotfiles.git
   ```

2. Navigate to the repository directory:
   ```bash
   cd dotfiles
   ```

3. Run the setup script:
   ```bash
   ./setup.sh
   ```

   This script uses `stow` to symlink the configuration files to your home directory.

## Notes

- Directories and files specified in the `.gitignore` file (e.g., `yarn/`, `fish/`, `.idea/`) are not included in the symlink process.
- The `zshrc` directory exists but is currently empty. If you require `zshrc` configurations, populate the directory with the necessary files.
- The repository is optimized for Linux and macOS systems.

## Troubleshooting

- Ensure that `stow` is installed and accessible in your PATH.
- Check file permissions for the `setup.sh` script. Run `chmod +x setup.sh` to make it executable if required.

## License

This repository is open-source and distributed under the MIT License.

