# Bash Scripting Basics

## 1. Introduction to Shell Scripting

### 1.1 Purpose of Shell Scripts
- Automate repetitive tasks.
- Combine multiple commands into a script for efficiency.

### 1.2 Basic Structure

- **Shebang**: Indicates the script's interpreter.
  ```bash
  #!/bin/bash
  ```
- **Comments**: Lines starting with `#` are comments.
  ```bash
  # This is a comment
  ```
- **Commands**: Execute shell commands.
  ```bash
  echo "Hello, World!"
  ```

## 2. Variables and Control Structures

### 2.1 Variables

- **Declaration**: Define a variable with a value.
  ```bash
  NAME="Alice"
  ```
- **Access**: Use the variable with `$`.
  ```bash
  echo "Hello, $NAME"
  ```

### 2.2 Conditionals

- **`if`, `else`, `elif`:** Control flow based on conditions.
  ```bash
  if [ "$NAME" = "Alice" ]; then
      echo "Hi, Alice!"
  elif [ "$NAME" = "Bob" ]; then
      echo "Hi, Bob!"
  else
      echo "Who are you?"
  fi
  ```

### 2.3 Loops

- **`for` Loop:** Iterate over a list of items.
  ```bash
  for i in 1 2 3; do
      echo "Number $i"
  done
  ```
- **`while` Loop:** Loop while a condition is true.
  ```bash
  COUNT=1
  while [ $COUNT -le 3 ]; do
      echo "Count $COUNT"
      COUNT=$((COUNT + 1))
  done
  ```

## 3. Taking Arguments

### 3.1 Positional Parameters

- **Access Arguments:** `$1`, `$2`, etc.
  ```bash
  echo "First argument: $1"
  echo "Second argument: $2"
  ```

### 3.2 All Arguments

- **`$@`:** Treats each quoted argument as separate.
  ```bash
  for arg in "$@"; do
      echo "Arg: $arg"
  done
  ```

- **`$*`:** Treats all arguments as a single word.
  ```bash
  echo "All arguments: $*"
  ```

### 3.3 Option Parsing with `getopts`

- **Syntax:** Parse flags and options.
  ```bash
  while getopts ":a:b:" opt; do
      case $opt in
          a) echo "Option -a with value $OPTARG" ;;
          b) echo "Option -b with value $OPTARG" ;;
          \?) echo "Invalid option: -$OPTARG" ;;
      esac
  done
  ```

## 4. Reading Console Input

### 4.1 Basic Input

- **Using `read`:** Prompts the user and reads input.
  ```bash
  read -p "Enter your name: " NAME
  echo "Hello, $NAME!"
  ```

### 4.2 Timed Input

- **Timeout:** Use `-t` for timeout.
  ```bash
  read -t 5 -p "Enter your favorite color (within 5 seconds): " COLOR
  echo "You chose $COLOR."
  ```

### 4.3 Silent Input

- **Password Input:** Use `-s` for silent input.
  ```bash
  read -s -p "Enter your password: " PASSWORD
  echo
  echo "Password is set."
  ```

## 5. Comparison Operations

### 5.1 String Comparisons

- **Equality:** `=` or `==`
  ```bash
  [ "$str1" = "$str2" ]
  ```

- **Inequality:** `!=`
  ```bash
  [ "$str1" != "$str2" ]
  ```

- **Empty Check:** `-z` (empty), `-n` (not empty)
  ```bash
  [ -z "$str" ]
  ```

### 5.2 Numeric Comparisons

- **Equality:** `-eq`
  ```bash
  [ $num1 -eq $num2 ]
  ```

- **Inequality:** `-ne`
  ```bash
  [ $num1 -ne $num2 ]
  ```

- **Greater/Less Than:** `-gt`, `-lt`
  ```bash
  [ $num1 -gt $num2 ]
  [ $num1 -lt $num2 ]
  ```

- **Greater/Less Than or Equal:** `-ge`, `-le`
  ```bash
  [ $num1 -ge $num2 ]
  [ $num1 -le $num2 ]
  ```

### 5.3 File Comparisons

- **Exists:** `-e`
  ```bash
  [ -e "$file" ]
  ```

- **Is Directory:** `-d`
  ```bash
  [ -d "$dir" ]
  ```

- **Is File:** `-f`
  ```bash
  [ -f "$file" ]
  ```

- **Readable/Writable/Executable:** `-r`, `-w`, `-x`
  ```bash
  [ -r "$file" ]
  [ -w "$file" ]
  [ -x "$file" ]
  ```