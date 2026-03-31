#!/bin/bash
# Script 2: FOSS Package Inspector
# Checks if Python is installed and shows some info
# I added a case statement for different packages because the assignment asked for it

# The package I'm checking for my project
package_to_check="python3"

echo "=========================================="
echo "   FOSS PACKAGE INSPECTOR"
echo "=========================================="
echo ""

# Check if python3 exists on the system
# command -v returns 0 if command exists - learned this from stack overflow
if command -v $package_to_check &>/dev/null; then
    echo "✓ $package_to_check is installed on this machine"
    echo ""
    echo "Package Information:"
    echo "------------------------------------------"
    
    # Get the version
    py_version=$($package_to_check --version 2>&1)
    echo "Version: $py_version"
    
    # Show where it's located
    echo "Location: $(which $package_to_check)"
    
    # Try to show more package info if possible
    # dpkg for Debian/Ubuntu, rpm for RedHat/Fedora
    if command -v dpkg &>/dev/null; then
        echo ""
        echo "Package details (from dpkg):"
        dpkg -l | grep -i python3 | head -2
    elif command -v rpm &>/dev/null; then
        echo ""
        echo "Package details (from rpm):"
        rpm -qa | grep -i python3 | head -2
    fi
    
else
    echo "✗ $package_to_check is NOT installed on this system"
    echo "  To install: sudo apt install python3  (on Ubuntu/Debian)"
    echo "  Or: sudo yum install python3          (on RedHat/Fedora)"
fi

echo ""
echo "=========================================="
echo "   A NOTE ABOUT THIS SOFTWARE"
echo "=========================================="

# Case statement as required
# I added a few examples plus my software
case $package_to_check in
    python3)
        echo "Python was created by Guido van Rossum in 1991"
        echo "The name comes from Monty Python, not the snake"
        echo "Philosophy: code should be readable and fun to write"
        echo ""
        echo "The Zen of Python (excerpt):"
        echo "  Beautiful is better than ugly"
        echo "  Explicit is better than implicit"
        echo "  Simple is better than complex"
        ;;
    apache2|httpd)
        echo "Apache HTTP Server - runs about 30% of websites"
        echo "Started in 1995, still going strong"
        ;;
    mysql)
        echo "MySQL - one of the most popular databases"
        echo "Dual licensed: GPL and commercial"
        ;;
    firefox)
        echo "Firefox - fighting for an open web since 2002"
        echo "Made by Mozilla, a non-profit organization"
        ;;
    *)
        echo "Open source software - freedom to use, study, modify, share"
        echo "Every project has a story worth learning about"
        ;;
esac

echo "=========================================="