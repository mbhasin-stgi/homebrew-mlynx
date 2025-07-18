# MANAN LYNX - Advanced CLI Search Tool

<div align="center">
  <h1>🔍 MANAN LYNX</h1>
  <p><strong>Enhanced Advanced CLI Search Tool for Terminal Power Users</strong></p>
  <p>A comprehensive search interface for macOS/Linux terminal with smart path handling, improved search capabilities, and custom editor integration</p>
  
  ![Version](https://img.shields.io/badge/version-1.0-blue.svg)
  ![License](https://img.shields.io/badge/license-MIT-green.svg)
  ![Platform](https://img.shields.io/badge/platform-macOS%20|%20Linux-orange.svg)
  ![Shell](https://img.shields.io/badge/shell-bash%20|%20zsh-yellow.svg)
</div>

## 🚀 What is MANAN LYNX?

MANAN LYNX is a powerful command-line interface (CLI) search tool designed to revolutionize how you search and navigate files in your terminal. It combines the power of modern search tools like `ripgrep` and `fzf` with an intuitive menu-driven interface that makes file searching accessible to both beginners and experienced users.

### 🎯 Key Features

- **📄 Document Search**: Find files by name, extension, regex patterns, size, and modification time
- **📁 Interactive File Browser**: Navigate files with live preview and syntax highlighting
- **🔍 Content Search**: Search inside files with multiple search modes and patterns
- **📂 Smart Directory Navigation**: Browse directories with bookmarks and history
- **📋 Search History**: Track and reuse previous searches
- **⚙️ Customizable Settings**: Configure your preferred editor and interface
- **🧠 Smart Search**: Automatically search both file names and content
- **🗑️ File Management**: Delete files and directories safely
- **🎨 Beautiful Interface**: Colorful, intuitive menus with ASCII art headers

## 🛠️ Prerequisites

Before installing MANAN LYNX, you need to install the following dependencies:

### Required Tools

#### 1. ripgrep (rg)
A fast text search tool that searches through file contents.

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install ripgrep
```

**CentOS/RHEL/Fedora:**
```bash
# CentOS/RHEL 8+
sudo dnf install ripgrep

# Fedora
sudo dnf install ripgrep

# CentOS/RHEL 7
sudo yum install ripgrep
```

**Arch Linux:**
```bash
sudo pacman -S ripgrep
```

**macOS (without Homebrew):**
```bash
# Download the latest release from GitHub
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-apple-darwin.tar.gz
tar -xzf ripgrep-13.0.0-x86_64-apple-darwin.tar.gz
sudo mv ripgrep-13.0.0-x86_64-apple-darwin/rg /usr/local/bin/
```

#### 2. fzf (Fuzzy Finder)
An interactive fuzzy finder for command-line.

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install fzf
```

**CentOS/RHEL/Fedora:**
```bash
# Install from source
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

**Arch Linux:**
```bash
sudo pacman -S fzf
```

**macOS (without Homebrew):**
```bash
# Install from source
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### Optional Tools (Recommended)

#### 3. bat (Better cat)
Enhanced file viewer with syntax highlighting.

**Ubuntu/Debian:**
```bash
sudo apt install bat
```

**CentOS/RHEL/Fedora:**
```bash
# Download from GitHub releases
curl -LO https://github.com/sharkdp/bat/releases/download/v0.24.0/bat-v0.24.0-x86_64-unknown-linux-gnu.tar.gz
tar -xzf bat-v0.24.0-x86_64-unknown-linux-gnu.tar.gz
sudo mv bat-v0.24.0-x86_64-unknown-linux-gnu/bat /usr/local/bin/
```

#### 4. fd (Better find)
A fast and user-friendly alternative to find.

**Ubuntu/Debian:**
```bash
sudo apt install fd-find
```

**CentOS/RHEL/Fedora:**
```bash
# Download from GitHub releases
curl -LO https://github.com/sharkdp/fd/releases/download/v8.7.0/fd-v8.7.0-x86_64-unknown-linux-gnu.tar.gz
tar -xzf fd-v8.7.0-x86_64-unknown-linux-gnu.tar.gz
sudo mv fd-v8.7.0-x86_64-unknown-linux-gnu/fd /usr/local/bin/
```

#### 5. tree (Directory tree viewer)
Displays directory structure in tree format.

**Ubuntu/Debian:**
```bash
sudo apt install tree
```

**CentOS/RHEL/Fedora:**
```bash
sudo dnf install tree
```

## 📦 Installation

### Method 1: Direct Download and Install

1. **Download the script:**
```bash
# Create a directory for the script
mkdir -p ~/Downloads/mlynx
cd ~/Downloads/mlynx

# Download the script (replace with actual URL when available)
curl -LO https://raw.githubusercontent.com/yourusername/mlynx/main/mlynx.sh
# OR if downloading from local file
# Copy your mlynx.sh file to this directory
```

2. **Make it executable:**
```bash
chmod +x mlynx.sh
```

3. **Install the tool:**
```bash
./mlynx.sh --install
```

4. **Reload your shell configuration:**
```bash
source ~/.zshrc
# OR for bash users
source ~/.bashrc
```

### Method 2: Manual Installation

1. **Create the installation directory:**
```bash
mkdir -p ~/.local/bin
```

2. **Copy the script:**
```bash
cp mlynx.sh ~/.local/bin/mlynx
chmod +x ~/.local/bin/mlynx
```

3. **Add to PATH (if not already added):**
```bash
# For zsh users
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
echo 'alias mlynx="$HOME/.local/bin/mlynx"' >> ~/.zshrc
source ~/.zshrc

# For bash users
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
echo 'alias mlynx="$HOME/.local/bin/mlynx"' >> ~/.bashrc
source ~/.bashrc
```

### Verify Installation

Run the following command to verify that MANAN LYNX is properly installed:

```bash
mlynx --help
```

If everything is set up correctly, you should see the main interface when you run:

```bash
mlynx
```

## 🎮 How to Use MANAN LYNX

### Starting the Application

Simply run the command from any directory:

```bash
mlynx
```

You'll be greeted with a beautiful ASCII art header and the main menu interface.

### Main Menu Options

#### 🔍 [D] Document Search
Search for files by various criteria:

1. **Filename Pattern**: Search using wildcards (e.g., `*.txt`, `report*`)
2. **File Extension**: Find all files with specific extensions (e.g., `pdf`, `js`, `py`)
3. **Advanced Regex**: Use complex regular expressions for pattern matching
4. **Size-based Search**: Find files based on size (`+100M` for files larger than 100MB)
5. **Modified Time**: Find recently modified files (`-1` for files modified in the last day)

**Example Usage:**
- Type `D` → Select option `1` → Enter `*.pdf` to find all PDF files
- Type `D` → Select option `2` → Enter `js` to find all JavaScript files
- Type `D` → Select option `4` → Enter `+10M` to find files larger than 10MB

#### 📁 [F] File Browser
Interactive file browser with live preview:

- Navigate files using arrow keys
- Press `Enter` to select a file
- Use `Ctrl+P` to toggle preview
- View file contents with syntax highlighting (if `bat` is installed)

**Actions on selected files:**
1. **View Content**: Display file with syntax highlighting
2. **Edit**: Open in your configured editor
3. **Copy Path**: Copy full file path to clipboard
4. **Open in Default App**: Open with system default application
5. **Show Info**: Display detailed file information
6. **Search in File**: Search for specific content within the file

#### 🔍 [I] Content Search
Search inside files with multiple modes:

1. **Show Content Matches**: Display matching lines with context
2. **List Matching Files**: Show only filenames containing the search term
3. **Interactive Search**: Use fzf for interactive searching with preview
4. **Type-specific Search**: Search only in specific file types
5. **Case-insensitive**: Search ignoring case sensitivity
6. **Regex Search**: Use regular expressions for complex patterns

**Example Searches:**
- Find all files containing "TODO": Select mode `1` → Enter `TODO`
- Find Python files with "import": Select mode `4` → Enter `py` → Enter `import`
- Case-insensitive search for "Error": Select mode `5` → Enter `error`

#### 📂 [C] Change Directory
Navigate to different directories:

1. **Browse Directories**: Interactive directory selection
2. **Enter Path Manually**: Type the full path
3. **Go to Home**: Quick navigation to home directory
4. **Go Up One Level**: Navigate to parent directory
5. **Recent Directories**: Access previously visited directories
6. **Bookmarks**: Use saved favorite locations

**Navigation Tips:**
- Use `~` for home directory shortcuts
- Tab completion works in manual path entry
- Bookmark frequently used directories for quick access

#### 📋 [H] Search History
View and reuse previous searches:

- See chronological list of all searches
- Select any previous search to repeat it
- Search terms are automatically saved with timestamps
- Clear history if needed

#### ⚙️ [E] Editor Settings
Configure your preferred text editor:

- **nano**: Simple, beginner-friendly editor
- **vim**: Powerful modal editor
- **emacs**: Feature-rich editor
- **code**: Visual Studio Code
- **subl**: Sublime Text
- **atom**: Atom editor
- **Custom**: Specify any editor command

**Custom Header**: You can also customize the ASCII art header name.

#### 🗑️ [X] Delete Files/Folders
Safely remove files and directories:

- Interactive selection of items to delete
- Confirmation prompts for safety
- Support for both files and directories
- Recursive deletion for directories

#### 🔄 [R] Refresh
Update current directory information:

- Refresh file listings
- Update directory statistics
- Sync with any external changes

### 🧠 Smart Search Feature

Instead of navigating menus, you can type any search term directly at the main prompt. MANAN LYNX will automatically:

1. Search for files matching the name
2. Search for content within files
3. Display both results in an organized format

**Example:** Type `config` at the main menu to find all files named "config" and all files containing "config".

## 🎨 Interface Features

### Color Coding
- **🔵 Blue**: File names and navigation elements
- **🟢 Green**: Success messages and confirmations
- **🟡 Yellow**: Warnings and highlights
- **🔴 Red**: Errors and important notices
- **🟣 Purple**: Accent colors and special elements
- **🔵 Cyan**: Information and metadata

### Keyboard Shortcuts
- **Arrow Keys**: Navigate through options
- **Enter**: Select/confirm
- **ESC**: Go back/cancel
- **Ctrl+P**: Toggle preview (in file browser)
- **Ctrl+R**: Refresh/toggle preview wrap
- **Ctrl+U/D**: Page up/down in preview

### Visual Elements
- **📄 📁 🔍**: Icons for different content types
- **━━━**: Decorative separators
- **✅ ❌**: Status indicators
- **💡**: Tips and hints
- **🎯**: Action items

## 🔧 Configuration

### Configuration Files

MANAN LYNX stores its configuration in your home directory:

```
~/.mlynx/
├── config          # User preferences
├── history         # Search history
└── bookmarks       # Saved directory bookmarks
```

### Customization Options

1. **Editor Settings**: Configure your preferred text editor
2. **Header Name**: Customize the ASCII art header
3. **Directory Bookmarks**: Save frequently accessed directories
4. **Search History**: Automatic saving of search terms

### Environment Variables

You can set environment variables to customize behavior:

```bash
export MLYNX_EDITOR="code"        # Default editor
export MLYNX_PREVIEW="true"       # Enable preview by default
export MLYNX_HISTORY_SIZE="100"   # Maximum history entries
```

## 🚨 Troubleshooting

### Common Issues

#### 1. "Command not found: rg"
**Solution**: Install ripgrep following the installation instructions above.

#### 2. "Command not found: fzf"
**Solution**: Install fzf following the installation instructions above.

#### 3. "No preview available"
**Solution**: Install `bat` for enhanced file preview with syntax highlighting.

#### 4. "Permission denied"
**Solution**: Make sure the script has execute permissions:
```bash
chmod +x ~/.local/bin/mlynx
```

#### 5. "mlynx: command not found"
**Solution**: Ensure the script is in your PATH:
```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### Debug Mode

Run with debug information:
```bash
bash -x mlynx
```

### Getting Help

If you encounter issues:

1. Check that all prerequisites are installed
2. Verify the script has execute permissions
3. Ensure the script is in your PATH
4. Check the troubleshooting section above
5. Create an issue on the GitHub repository

## 🤝 Contributing

We welcome contributions to MANAN LYNX! Here's how you can help:

### Development Setup

1. **Fork the repository**
2. **Clone your fork:**
```bash
git clone https://github.com/yourusername/mlynx.git
cd mlynx
```

3. **Create a feature branch:**
```bash
git checkout -b feature/your-feature-name
```

4. **Make your changes and test thoroughly**
5. **Submit a pull request**

### Areas for Contribution

- **New search modes**: Add additional search functionality
- **UI improvements**: Enhance the visual interface
- **Performance optimizations**: Make searches faster
- **Documentation**: Improve guides and examples
- **Bug fixes**: Report and fix issues
- **Platform support**: Extend compatibility

### Coding Guidelines

- Follow bash scripting best practices
- Use consistent indentation (4 spaces)
- Add comments for complex logic
- Test on multiple platforms
- Maintain backward compatibility

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **ripgrep**: For blazing fast text search
- **fzf**: For interactive fuzzy finding
- **bat**: For beautiful syntax highlighting
- **fd**: For efficient file finding
- **The open-source community**: For continuous inspiration

## 📞 Support

If you find MANAN LYNX helpful, please:

- ⭐ Star the repository
- 🐛 Report bugs
- 💡 Suggest new features
- 📖 Improve documentation
- 🔄 Share with others

## 📈 Changelog

### Version 2.0 - Enhanced Edition
- Added smart search functionality
- Improved user interface with better colors
- Enhanced file browser with preview
- Added multiple search modes
- Introduced directory bookmarks
- Better error handling and user feedback
- Custom editor configuration
- Search history functionality

### Version 1.0 - Initial Release
- Basic file and content search
- Simple menu interface
- Directory navigation
- File management features

---

<div align="center">
  <p><strong>Made with ❤️ by the MANAN LYNX Team</strong></p>
  <p>Happy Searching! 🔍</p>
</div>
