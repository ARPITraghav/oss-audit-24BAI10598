#!/bin/bash
# Script 3: Disk and Permission Auditor
# Loops through important directories to check space and permissions
# I struggled a bit with the formatting but figured out printf works better than echo

# Directories to check - added /usr/lib/python3 since that's where Python lives
dir_list=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/lib/python3")

echo "=========================================="
echo "   DISK USAGE & PERMISSIONS REPORT"
echo "=========================================="
echo "Generated: $(date)"
echo "=========================================="
echo ""

# Print header
printf "%-25s %-25s %-12s\n" "DIRECTORY" "OWNER:GROUP (PERMS)" "SIZE"
echo "----------------------------------------------------------------------"

# Loop through each directory
for dir_name in "${dir_list[@]}"; do
    if [ -d "$dir_name" ]; then
        # Get permissions and ownership
        # ls -ld gives details, awk grabs specific fields
        perms_info=$(ls -ld "$dir_name" 2>/dev/null | awk '{print $3":"$4 " ("$1")"}')
        
        # Get size with du -sh (human readable)
        size_info=$(du -sh "$dir_name" 2>/dev/null | cut -f1)
        
        # If du fails, set size to unknown
        if [ -z "$size_info" ]; then
            size_info="N/A"
        fi
        
        printf "%-25s %-25s %-12s\n" "$dir_name" "$perms_info" "$size_info"
    else
        printf "%-25s %-25s %-12s\n" "$dir_name" "NOT FOUND" "-"
    fi
done

echo "----------------------------------------------------------------------"
echo ""

# Check Python config directory specifically (if it exists)
# On my system it's /etc/python3 but I know some distros use /etc/python
py_config_dir="/etc/python3"
if [ -d "$py_config_dir" ]; then
    py_perms=$(ls -ld "$py_config_dir" | awk '{print $1, $3, $4}')
    echo "Note: Python config found at $py_config_dir"
    echo "      Permissions: $py_perms"
    echo "      (This is normal - Python doesn't have a big config file)"
fi

echo ""
echo "=========================================="
echo "   QUICK SECURITY NOTES"
echo "=========================================="
echo "/etc        : System configs - should be root only"
echo "/var/log    : Log files - readable by root and adm group usually"
echo "/home       : User data - each user owns their own folder"
echo "/tmp        : Temp files - everyone can write but sticky bit helps"
echo "/usr/lib    : System libraries - don't mess with this"
echo "=========================================="