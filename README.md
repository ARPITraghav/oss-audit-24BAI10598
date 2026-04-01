Open Source Audit Project – Python
Student Information

Name: Arpit Raghav
Registration Number: 24BAI10598
Course: Open Source Software
Chosen Software: Python
Submission Date: March 2026

Table of Contents
Project Overview
Theoretical Study
Shell Scripts Developed
How to Run the Scripts
Dependencies
Troubleshooting
GitHub Repository
Project Overview

This project is an Open Source Software Audit of Python. The objective of the project is to study Python from both a theoretical perspective and a practical Linux environment.

The project is divided into two major parts:

Phase 1 – Theoretical Study

In this phase, research was conducted to understand Python as an open-source technology. The following topics were explored:

History and origin of Python
Python’s open-source license
Ethical importance of open source software
Python's presence in the Linux ecosystem
Python’s developer community and ecosystem
Comparison between open source and proprietary software
Phase 2 – Practical Implementation

The second phase focused on hands-on work using Ubuntu Linux. The tasks included:

Writing five shell scripts
Running and testing each script on Linux
Capturing screenshots of script execution
Creating a GitHub repository
Preparing documentation and the final report
Theoretical Work
Part A1 – Origin of Python

Python was developed by Guido van Rossum and released in 1991. The name “Python” was inspired by the British comedy show Monty Python's Flying Circus, not the snake.

The goal of Python was to create a programming language that is easy to read, simple to learn, and powerful enough for real-world applications. Over time, Python has become one of the most widely used programming languages in areas such as web development, automation, artificial intelligence, and data science.

Part A2 – License Analysis

Python is distributed under the Python Software Foundation (PSF) License.
This license is approved by the Open Source Initiative (OSI) and allows users to:

Use Python freely
Modify the source code
Distribute copies of the software

The license encourages innovation while protecting both developers and users.

Part A3 – Ethical Reflection

Open source software plays an important role in making technology accessible to everyone. Because Python is free and open, people from different backgrounds can learn programming without financial barriers.

Students, researchers, and developers can study the source code, modify it, and share improvements with others. This collaborative approach promotes learning, creativity, and technological progress.

Part B – Python in the Linux Environment

Python is commonly included in many Linux distributions.

Typical locations in Ubuntu Linux include:

Python executable: /usr/bin/python3
Configuration files: /etc/python3

Linux also uses permission rules for files and directories.
Normally:

Directories have permission 755
Files have permission 644

The installation size of Python usually ranges between 50 MB and 100 MB, depending on the version and installed packages.

Part C – Python FOSS Ecosystem

Python has a very large open source ecosystem supported by developers worldwide.

Important dependencies include:

libc
openssl
zlib

Python development is coordinated by the Python Software Foundation (PSF), which is a non-profit organization.

Python is also commonly used in web servers together with technologies like:

Linux
Apache
MySQL

This combination is often referred to as the LAMP stack.

The Python community consists of millions of developers, contributing libraries, tools, and improvements.

Part D – Open Source vs Proprietary Software
Feature	Python (Open Source)	Proprietary Software (Example: MATLAB)
Cost	Free	Paid license required
Source Code	Available	Not accessible
Modification	Allowed	Restricted
Support	Community support	Company support
Learning Resources	Mostly free	Often paid

Observation:
Open source software such as Python offers greater flexibility, transparency, and accessibility compared to proprietary software.

Shell Scripts Developed
Script 1 – System Identity Report (script1.sh)

Purpose:
Displays important system information.

Information displayed:

Linux distribution
Kernel version
Current logged-in user
Home directory
System uptime
Current date and time
Python installation information

Concepts Used

Variables
Command substitution
Conditional statements
Formatted output
Script 2 – FOSS Package Inspector (script2.sh)

Purpose:
Checks whether Python is installed on the system and displays package details.

Information displayed

Python installation status
Python version
Package description
Maintainer details
Installed package size

Concepts Used

Functions
If-else statements
Pipes
grep and awk
Script 3 – Disk and Permission Auditor (script3.sh)

Purpose:
Examines system directories for permissions and disk usage.

Directories checked

/etc
/var/log
/home
/tmp

Information displayed

Directory permissions
Owner information
Directory size
Disk usage summary

Concepts Used

Arrays
For loops
File tests
Linux commands (du, df, ls)
Script 4 – Log File Analyzer (script4.sh)

Purpose:
Analyzes log files and counts occurrences of specific keywords.

Information displayed

Total number of lines in log file
Number of matching entries
Percentage of matches
Last 5 matching log entries

Usage Example

./script4.sh /path/to/logfile error

Concepts Used

Command-line arguments
While loops
Counters
grep
bc for calculations
Script 5 – Open Source Manifesto Generator (script5.sh)

Purpose:
Creates a personalized open-source manifesto.

What the script does

Asks the user several questions
Generates a text manifesto
Saves the manifesto as a file
Displays the result on screen

Questions asked

Your name
Open-source tool you use
Meaning of “freedom”
What you plan to build and share

Concepts Used

read command
Parameter expansion
Heredoc
File redirection
How to Run the Scripts
Step 1 – System Requirements
Ubuntu / Debian based Linux system
Bash shell
Internet connection (for installing dependencies)
Step 2 – Save the Scripts

Place all script files (script1.sh to script5.sh) inside a folder.

Step 3 – Give Execution Permission
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
Step 4 – Run the Scripts

Example:

./script1.sh
./script2.sh
./script3.sh

To analyze a log file:

./script4.sh /tmp/test.log error

To generate manifesto:

./script5.sh
Dependencies

Required packages:

Package	Purpose
bc	Used for percentage calculations
python3	Required for Python checks

Install dependencies:

sudo apt update
sudo apt install bc python3

Verify installation:

bc --version
python3 --version
Troubleshooting
Script not running

Check permissions:

chmod +x script1.sh
bc command not found

Install package:

sudo apt install bc
Python not installed
sudo apt install python3
Permission denied

Make scripts executable using chmod +x.

GitHub Repository

Example repository link:

https://github.com/YOUR_USERNAME/oss-audit-24BAI10598

Repository contains:

script1.sh
script2.sh
script3.sh
script4.sh
script5.sh
README.md
Author

Arpit Raghav
Registration Number: 24BAI10598
Course: Open Source Software
VIT University
March 2026

Conclusion

This project helped me gain a deeper understanding of open source software through both research and practical experience. I studied Python’s background, licensing model, ethical value, Linux integration, and ecosystem.

In addition, developing shell scripts improved my knowledge of Linux commands, automation, file handling, and system administration tasks.

Overall, the project demonstrates how open source technologies like Python continue to play a vital role in modern computing and collaborative software development.
