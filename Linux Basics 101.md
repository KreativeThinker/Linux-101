---
id: Linux Basics 101
aliases: []
tags: []
---

# Contents

#### **Introduction to Linux**

- **Overview of Linux**
  - Definition: Linux as an open-source, Unix-like OS.
  - Kernel: Role and significance in the system.
- **Distributions/Distros**
  - Examples: Ubuntu, Fedora, Arch (I use Arch BTW).
  - Differences: Package management, default software.
- **Benefits of Linux**
  - Stability, security, and cost-effectiveness.
  - Flexibility and extensive community support.
  - Complete customization possible

#### **Basic Linux Commands**

- **File System Navigation**
  - `pwd`: Print working directory.
  - `ls`: List directory contents, options like `-l`, `-a`.
  - `cd`: Change directory, usage examples.
- **File Operations**
  - `cp`: Copy files and directories, with options.
  - `mv`: Move or rename files.
  - `rm`: Remove files or directories, use with caution.
- **File Viewing**
  - `cat`, `less`, `more`: Viewing file contents.
  - `head`, `tail`: Viewing the beginning or end of files.
- **Permission Management**
  - `chmod`: Change file permissions (numeric and symbolic).
  - `chown`: Change file ownership.

#### **Interactive Demo: Navigating the File System**

- **Practical Example**
  - Create a directory (`mkdir demo`), navigate into it (`cd demo`).
  - Create a file (`touch example.txt`), write to it (`echo "Hello, Linux!" > example.txt`).
  - View the file contents (`cat example.txt`).

#### **Introduction to Shell Scripting**

- **Purpose of Shell Scripts**
  - Automate repetitive tasks.
  - Combine multiple commands into a script.
- **Basic Structure**
  - **Shebang**: `#!/bin/bash` or `#!/bin/sh`.
  - **Comments**: `# This is a comment`.
  - **Commands**: Any valid shell commands.

#### **Variables and Control Structures in Shell Scripting**

- **Variables**
  - Declaration: `VAR_NAME="value"`.
  - Access: `$VAR_NAME`.
- **Conditionals**
  - `if`, `else`, `elif`: Basic syntax and examples.
- **Loops**
  - `for`, `while`: Basic syntax and examples.

#### **Simple Shell Script Example**

- **Script Overview**
  - A simple script to greet the user.
- **Script Example**

```bash
#!/bin/bash
# Simple greeting script
echo "What is your name?"
read NAME
echo "Hello, $NAME!"
```

- **Explanation**
  - Captures user input with `read`.
  - Prints a greeting using variable interpolation.

#### **Intermediate Scripting: File Backup**

- **Script Overview**
  - Automates the process of backing up files.
- **Script Example**

```bash
#!/bin/bash
# Backup script
SOURCE_DIR="/path/to/source"
BACKUP_DIR="/path/to/backup"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Copy files
cp -r $SOURCE_DIR/* $BACKUP_DIR

echo "Backup completed."
```

- **Explanation**
  - Ensures the backup directory exists (`mkdir -p`).
  - Copies all contents from the source to the backup directory.

#### **Linux Arithmetic**

- **Overview**
  - Performing arithmetic operations in the shell.
- **Basic Arithmetic Using `expr`**
  - Examples: `expr 5 + 3`, `expr 10 \* 2`.
- **Arithmetic in Scripts**
  - Using `$(( ))` for arithmetic operations.
- **Script Example**

```bash
#!/bin/bash
# Arithmetic example
NUM1=5
NUM2=3
SUM=$((NUM1 + NUM2))
echo "Sum: $SUM"
```

- **Explanation**
  - Demonstrates basic arithmetic using variables.

#### **Advanced Scripting: Log Analysis**

- **Script Overview**
  - Analyzes log files for specific patterns.
- **Script Example**

```bash
#!/bin/bash
# Log analysis script
LOG_FILE="/var/log/syslog"
PATTERN="ERROR"

# Search for pattern in log file
grep $PATTERN $LOG_FILE > errors.txt

echo "Error log created."
```

- **Explanation**
  - Uses `grep` to find lines containing "ERROR".
  - Redirects output to a file (`errors.txt`).

#### **Q&A and Hands-on Practice**

- **Q&A Session**
  - Address questions from participants.
- **Interactive Exercise**
  - Task: Write a script to list files modified in the last 7 days.

```bash
#!/bin/bash
# List modified files script
find /path/to/search -type f -mtime -7
```

- **Explanation**
  - Uses `find` to locate files modified in the past week.

#### **Wrap-up and Resources**

- **Summary**
  - Recap of topics covered.
- **Resources**
  - Recommended readings and online tutorials.
- **Further Learning**
  - Emphasis on practice and continuous learning.

**Conclude the seminar by thanking attendees and providing contact information for follow-up questions.**
