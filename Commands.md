---
id: Commands
aliases: []
tags: []
---

# Contents

- [[#Software Installation on Linux|Software Installation on Linux]]
  - [[#Software Installation on Linux#Debian-Based Systems (e.g., Ubuntu, Debian)|Debian-Based Systems (e.g., Ubuntu, Debian)]]
    - [[#Debian-Based Systems (e.g., Ubuntu, Debian)#Using `apt` (Advanced Package Tool)|Using `apt` (Advanced Package Tool)]] - [[#Update Package Lists|Update Package Lists]] - [[#Install a Package|Install a Package]] - [[#Remove a Package|Remove a Package]] - [[#Upgrade Installed Packages|Upgrade Installed Packages]]
  - [[#Software Installation on Linux#Fedora-Based Systems (e.g., Fedora, Red Hat)|Fedora-Based Systems (e.g., Fedora, Red Hat)]]
    - [[#Fedora-Based Systems (e.g., Fedora, Red Hat)#Using `dnf` (Dandified YUM)|Using `dnf` (Dandified YUM)]] - [[#Update Package Lists|Update Package Lists]] - [[#Install a Package|Install a Package]] - [[#Remove a Package|Remove a Package]] - [[#Upgrade Installed Packages|Upgrade Installed Packages]]
  - [[#Software Installation on Linux#Arch-Based Systems (e.g., Arch Linux, Manjaro)|Arch-Based Systems (e.g., Arch Linux, Manjaro)]]
    - [[#Arch-Based Systems (e.g., Arch Linux, Manjaro)#Using `pacman` (Package Manager)|Using `pacman` (Package Manager)]] - [[#Update Package Lists|Update Package Lists]] - [[#Install a Package|Install a Package]] - [[#Remove a Package|Remove a Package]] - [[#Upgrade Installed Packages|Upgrade Installed Packages]]
  - [[#Software Installation on Linux#Using Additional Package Managers|Using Additional Package Managers]]
    - [[#Using Additional Package Managers#Snap (~~Universal~~ Stupid Package Manager)|Snap]]
    - [[#Using Additional Package Managers#**Flatpak (Universal Package Manager)**|Flatpak]]
    - [[#Using Additional Package Managers#**AppImage (Portable Application Format)**|AppImage]]
  - [[#Software Installation on Linux#Text and Data Manipulation|Text and Data Manipulation]] - [[#`echo`|`echo`]] - [[#`grep`|`grep`]]
  - [[#Software Installation on Linux#Command Chaining and Redirection|Command Chaining and Redirection]] - [[#`;`|`;`]] - [[#`|`|`|`]] - [[#`>`|`>`]] - [[#`>>`|`>>`]] - [[#`<`|`<`]] - [[#`&&`|`&&`]] - [[#`||`|`||`]]
  - [[#Software Installation on Linux#File Navigation|File Navigation]] - [[#`pwd`|`pwd`]] - [[#`ls`|`ls`]] - [[#`cd`|`cd`]]
  - [[#Software Installation on Linux#File Operations|File Operations]] - [[#`cp`|`cp`]] - [[#`mv`|`mv`]] - [[#`rm`|`rm`]]
  - [[#Software Installation on Linux#File Viewing|File Viewing]] - [[#`cat`|`cat`]] - [[#`less`|`less`]] - [[#`more`|`more`]] - [[#`head`|`head`]] - [[#`tail`|`tail`]]
  - [[#Software Installation on Linux#Permission Management|Permission Management]] - [[#`chmod`|`chmod`]] - [[#`chown`|`chown`]]
  - [[#Software Installation on Linux#Process Management|Process Management]] - [[#`ps`|`ps`]] - [[#`top`|`top`]] - [[#`kill`|`kill`]]
  - [[#Software Installation on Linux#Networking|Networking]] - [[#`ifconfig`|`ifconfig`]] - [[#`ping`|`ping`]] - [[#`curl`|`curl`]]
  
---
# Basic Linux Commands

## Software Installation on Linux

---

### Debian-Based Systems (e.g., Ubuntu, Debian)

#### Using `apt` (Advanced Package Tool)

###### Update Package Lists

- **Description:** Fetches the latest package lists from repositories.
- **Command:**
  ```bash
  sudo apt update
  ```

###### Install a Package

- **Description:** Installs the specified package.
- **Command:**
  ```bash
  sudo apt install [PACKAGE_NAME]
  ```
- **Example:**
  ```bash
  sudo apt install vim
  ```

###### Remove a Package

- **Description:** Removes the specified package.
- **Command:**
  ```bash
  sudo apt remove [PACKAGE_NAME]
  ```
- **Example:**
  ```bash
  sudo apt remove vim
  ```

###### Upgrade Installed Packages

- **Description:** Upgrades all installed packages to their latest versions.
- **Command:**
  ```bash
  sudo apt upgrade
  ```

---

### Fedora-Based Systems (e.g., Fedora, Red Hat)

#### Using `dnf` (Dandified YUM)

###### Update Package Lists

- **Description:** Refreshes the package lists.
- **Command:**
  ```bash
  sudo dnf check-update
  ```

###### Install a Package

- **Description:** Installs the specified package.
- **Command:**
  ```bash
  sudo dnf install [PACKAGE_NAME]
  ```
- **Example:**
  ```bash
  sudo dnf install vim
  ```

###### Remove a Package

- **Description:** Removes the specified package.
- **Command:**
  ```bash
  sudo dnf remove [PACKAGE_NAME]
  ```
- **Example:**
  ```bash
  sudo dnf remove vim
  ```

###### Upgrade Installed Packages

- **Description:** Upgrades all installed packages to their latest versions.
- **Command:**
  ```bash
  sudo dnf upgrade
  ```

---

### Arch-Based Systems (e.g., Arch Linux, Manjaro)

#### Using `pacman` (Package Manager)

###### Update Package Lists

- **Description:** Synchronizes the package database and updates package lists.
- **Command:**
  ```bash
  sudo pacman -Sy
  ```

###### Install a Package

- **Description:** Installs the specified package.
- **Command:**
  ```bash
  sudo pacman -S [PACKAGE_NAME]
  ```
- **Example:**
  ```bash
  sudo pacman -S vim
  ```

###### Remove a Package

- **Description:** Removes the specified package.
- **Command:**
  ```bash
  sudo pacman -R [PACKAGE_NAME]
  ```
- **Example:**
  ```bash
  sudo pacman -R vim
  ```

###### Upgrade Installed Packages

- **Description:** Upgrades all installed packages to their latest versions.
- **Command:**
  ```bash
  sudo pacman -Syu
  ```

---

### Using Additional Package Managers

#### Snap (~~Universal~~ Stupid Package Manager)

- **<b><u>DON'T</u></b> Install Snap:**
  ```bash
  sudo apt install snapd    # Debian-based
  sudo dnf install snapd    # Fedora-based
  sudo pacman -S snapd      # Arch-based
  ```
- **<b><u>DON'T</u></b> Install a Snap Package:**
  ```bash
  sudo snap install [PACKAGE_NAME]
  ```

#### **Flatpak (Universal Package Manager)**

- **Install Flatpak:**
  ```bash
  sudo apt install flatpak    # Debian-based
  sudo dnf install flatpak    # Fedora-based
  sudo pacman -S flatpak      # Arch-based
  ```
- **Install a Flatpak Package:**
  ```bash
  flatpak install flathub [PACKAGE_NAME]
  ```

#### **AppImage (Portable Application Format)**

- **Run an AppImage:**
  ```bash
  chmod +x [APPIMAGE_FILE]
  ./[APPIMAGE_FILE]
  ```

---

### Text and Data Manipulation

###### `echo`

- **Description:** outputs the text to the specified location

**Usage:**

```bash
echo [Text]
```

**Example**

```bash
echo "Hello World"
Hello World
```

###### `grep`

- **Description:** Find a word or pattern in an input

**Usage:**

```bash
grep [OPTIONS] REGEX [FILES]
```

**Example:**

```bash
grep -i "linux" README.md
#### **Introduction to Linux**
- **Overview of Linux**
  - Definition: Linux as an open-source, Unix-like OS.
- **Benefits of Linux**
#### **Basic Linux Commands**
  - Create a file (`touch example.txt`), write to it (`echo "Hello, Linux!" > example.txt`).
#### **Linux Arithmetic**
```

Here, the `-i` option stands for ignore-case. `"linux"` the the pattern and `README.md` is the file we are searching.

---

### Command Chaining and Redirection

###### `;`

- **Description:** Allows chaining of multiple commands

**Usage:**

```bash
command [OPTIONS]; command [OPTIONS]; command [OPTIONS];...
```

**Example:**

```bash
echo "Hello"; echo "World";
Hello
World
```

###### `|`

- **Description:** Pass the output of a command as the input to the next command

**Usage:**

```bash
command [OPTIONS] | command [OPTIONS]
```

**Example:**

```bash
cat README.md | grep -i 'linux'
#### **Introduction to Linux**
- **Overview of Linux**
  - Definition: Linux as an open-source, Unix-like OS.
- **Benefits of Linux**
#### **Basic Linux Commands**
  - Create a file (`touch example.txt`), write to it (`echo "Hello, Linux!" > example.txt`).
#### **Linux Arithmetic**
```

[what is cat?](#`cat`)

###### `>`

- **Description:** Redirects output to a file with overwrite

**Usage:**

```bash
command > file
```

**Example:**

```bash
echo "You all seem bored ngl" > tmp
cat tmp
You all seem bored ngl
```

###### `>>`

- **Description:** Redirects output to a file with append

**Usage:**

```bash
command >> file
```

**Example:**

```bash
echo "Resource link: https://www.youtube.com/watch?v=8ybW48rKBME" >> tmp

cat tmp
You all seem bored ngl
Resource link: https://www.youtube.com/watch?v=8ybW48rKBME
```

###### `<`

- **Description:** Redirects a file to input

**Usage:**

```bash
command < file
```

**Example:**

```bash
cat < tmp
You all seem bored ngl
Resource link: https://www.youtube.com/watch?v=8ybW48rKBME
```

###### `&&`

- **Description:** Logical AND operand. Executes next command if first command is successful

**Usage:**

```bash
command && command
```

**Example:**

```bash
mkdir Linux\ 101 && cd Linux\ 101 && pwd
/home/ghost/LUGVITC/linux 101/Linux 101
```

###### `||`

- **Description:** Logical OR operand. Executes next command if first command fails

**Usage:**

```bash
command || command
```

**Example:**

```bash
mkdir Examples || echo "Folder already exists"
mkdir: cannot create directory ‘Examples’: File exists
Folder already exists
```

---

### File Navigation

###### `pwd`

- **Stands for:** Present Working Directory
- **Description:** Returns the current directory path.

**Usage:**

```bash
pwd
```

**Example:**

```bash
/home/ghost/LUGVITC/linux 101
```

###### `ls`

- **Stands for:** List
- **Description:** Lists the contents of a directory.
- **Options:**
  - `-l`: Use a long listing format.
  - `-a`: Include hidden files (those starting with `.`).
  - `-h`: Print sizes in human-readable format.

**Usage:**

```bash
ls
ls -l
ls -a
```

**Example:**

````bash
ls
Documentation  Examples  README.md```

```bash
ls -l
total 16
drwxr-xr-x 2 ghost ghost 4096 Jul  4 15:20 Documentation
drwxr-xr-x 2 ghost ghost 4096 Jul  4 15:20 Examples
-rw-r--r-- 1 ghost ghost 4247 Jul  4 15:07 README.md
````

```bash
ls -la
total 28
drwxr-xr-x 5 ghost ghost 4096 Jul  4 15:35 .
drwxr-xr-x 3 ghost ghost 4096 Jul  4 15:05 ..
drwxr-xr-x 2 ghost ghost 4096 Jul  4 15:20 Documentation
drwxr-xr-x 2 ghost ghost 4096 Jul  4 15:20 Examples
-rw-r--r-- 1 ghost ghost    0 Jul  4 15:35 .hidden_file
drwxr-xr-x 3 ghost ghost 4096 Jul  4 15:06 .obsidian
-rw-r--r-- 1 ghost ghost 4247 Jul  4 15:07 README.md
```

###### `cd`

- **Stands for:** Change Directory
- **Description:** Changes the current directory to the specified path. If no path is provided, it defaults to the home directory (`$HOME`).

**Usage:**

```bash
cd [PATH]
```

**Example:**

```bash
cd LUGVITC/linux\ 101

pwd
/home/ghost/LUGVITC/linux 101
```

### File Operations

###### `cp`

- **Stands for:** Copy
- **Description:** Copies files or directories from one location to another.
- **Options:**
  - `-r`: Copy directories recursively.

**Usage:**

```bash
cp SOURCE DESTINATION
cp -r SOURCE_DIR DESTINATION_DIR
```

###### `mv`

- **Stands for:** Move
- **Description:** Moves or renames files or directories.

**Usage:**

```bash
mv SOURCE DESTINATION
```

###### `rm`

- **Stands for:** Remove
- **Description:** Removes files or directories. Use with caution, especially with the `-r` option.
- **Options:**
  - `-r`: Remove directories and their contents recursively.
  - `-f`: Force removal without prompting.

**Usage:**

```bash
rm FILE
rm -r DIRECTORY
```

### File Viewing

###### `cat`

- **Stands for:** Concatenate
- **Description:** Displays the content of a file.

**Usage:**

```bash
cat FILE
```

**Example:**

```bash
cat tmp
You all seem bored ngl
Resource link: https://www.youtube.com/watch?v=8ybW48rKBME
```

###### `less`

- **Description:** Allows viewing of a file one screen at a time. Unlike `more`, it allows backward movement in the file.

**Usage:**

```bash
less FILE
```

###### `more`

- **Description:** Displays the content of a file one screen at a time. Useful for viewing large files.

**Usage:**

```bash
more FILE
```

###### `head`

- **Description:** Outputs the first part of files. By default, it prints the first 10 lines.
- **Options:**
  - `-n`: Print the first `n` lines.

**Usage:**

```bash
head FILE
head -n 20 FILE
```

**Example:**

```bash
head README.md

# Contents

#### **Introduction to Linux**

- **Overview of Linux**
  - Definition: Linux as an open-source, Unix-like OS.
  - Kernel: Role and significance in the system.
- **Distributions/Distros**
  - Examples: Ubuntu, Fedora, Arch (I use Arch BTW).
```

###### `tail`

- **Description:** Outputs the last part of files. By default, it prints the last 10 lines.
- **Options:**
  - `-n`: Print the last `n` lines.
  - `-f`: Follow the file as it grows (useful for monitoring log files).

**Usage:**

```bash
tail FILE
tail -n 20 FILE
tail -f FILE
```

**Example:**

```bash
tail README.md
  - Uses `find` to locate files modified in the past week.

#### **Wrap-up and Resources**

- **Summary**
  - Recap of topics covered.
- **Resources**
  - Recommended readings and online tutorials.
- **Further Learning**
```

### Permission Management

###### `chmod`

- **Stands for:** Change Mode
- **Description:** Changes the access permissions of files or directories.
- **Options:** Permissions can be specified using numeric (e.g., `755`) or symbolic (e.g., `u+rwx`) notation.

**Usage:**

```bash
chmod PERMISSIONS FILE
chmod 755 script.sh
chmod u+x file.sh
```

###### `chown`

- **Stands for:** Change Ownership
- **Description:** Changes the owner and group of files or directories.

**Usage:**

```bash
chown OWNER:GROUP FILE
chown user:group file.txt
```

### Process Management

###### `ps`

- **Stands for:** Process Status
- **Description:** Reports a snapshot of current processes.
- **Options:**
  - `-e`: Show all processes.
  - `-f`: Full-format listing.

**Usage:**

```bash
ps
ps -e
ps -ef
```

###### `top`

- **Description:** Provides a dynamic, real-time view of running processes.

**Usage:**

```bash
top
```

###### `kill`

- **Description:** Sends a signal to a process, usually to terminate it.
- **Options:**
  - `-9`: Force kill the process.

**Usage:**

```bash
kill PID
kill -9 PID
```

### Networking

###### `ifconfig`

- **Description:** Configures or displays network interfaces.

**Usage:**

```bash
ifconfig
```

###### `ping`

- **Description:** Sends ICMP ECHO_REQUEST packets to network hosts.
- **Options:**
  - `-c`: Number of packets to send.

**Usage:**

```bash
ping HOST
ping -c 4 google.com
```

###### `curl`

- **Description:** Transfers data from or to a server.
- **Options:** Can perform various requests like GET, POST, PUT, etc.

**Usage:**

```bash
curl URL
curl -O URL # Download file from URL
```

---
