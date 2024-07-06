
#!/bin/bash
# List modified files script
find /home/ghost/tmp -type f -mtime -7

# **Explanation**
# Uses `find` to locate files modified in the past week.
  
