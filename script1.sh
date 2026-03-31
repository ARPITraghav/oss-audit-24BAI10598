#!/bin/bash
# Script 1: System Identity Report
# Just a simple welcome screen that shows what system I'm working on
# I made this to practice using variables and command substitution

# Grabbing system info - I learned that $(command) runs a command and stores output
distro_name=$(lsb_release -d 2>/dev/null | cut -f2)

# If lsb_release isn't available (happened on some systems I tested)
if [ -z "$distro_name" ]; then
    distro_name="Could not detect (maybe no lsb-release installed)"
fi

kernel_ver=$(uname -r)
current_user=$(whoami)
home_folder=$HOME
uptime_info=$(uptime -p | sed 's/up //')
current_time=$(date "+%A, %B %d, %Y %I:%M %p")

# Display everything - tried to make it look decent with formatting
echo "=========================================="
echo "       WELCOME TO MY LINUX SYSTEM"
echo "=========================================="
echo ""
echo "System Details"
echo "------------------------------------------"
echo "Distribution : $distro_name"
echo "Kernel       : $kernel_ver"
echo "Logged in as : $current_user"
echo "Home         : $home_folder"
echo "Uptime       : $uptime_info"
echo "Current time : $current_time"
echo "------------------------------------------"
echo ""
echo "This system runs on open source software"
echo "OS License: GPL v2 (Linux Kernel)"
echo "That means I can study, modify, and share this OS"
echo "=========================================="