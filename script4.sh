#!/bin/bash
# Script 4: Log File Analyzer
# Reads a log file and counts occurrences of a keyword
# I spent a while figuring out the while read loop but it makes sense now
# Usage: ./log_analyzer.sh /path/to/logfile [keyword]

# Check if user provided a filename
if [ $# -lt 1 ]; then
    echo "Error: Need to specify a log file"
    echo "Usage: $0 <logfile> [keyword]"
    echo "Example: $0 /var/log/syslog error"
    exit 1
fi

log_file="$1"
search_word="${2:-error}"  # Use 'error' as default if nothing specified
match_count=0
temp_matches=""  # I'll store matches here

echo "=========================================="
echo "       LOG FILE ANALYZER"
echo "=========================================="
echo ""

# Check if file exists
if [ ! -f "$log_file" ]; then
    echo "Error: File '$log_file' not found"
    echo "Please check the path and try again"
    exit 1
fi

# Check if file is empty
if [ ! -s "$log_file" ]; then
    echo "Warning: The log file is empty"
    echo ""
    
    # Retry loop as required by assignment
    # This was tricky to implement but works
    retry_answer=""
    while [ "$retry_answer" != "n" ] && [ "$retry_answer" != "N" ]; do
        echo -n "Wait and check again? (y/n): "
        read retry_answer
        
        case $retry_answer in
            y|Y)
                echo "Waiting 5 seconds..."
                sleep 5
                if [ -s "$log_file" ]; then
                    echo "File now has content. Continuing..."
                    break
                else
                    echo "File is still empty."
                    retry_answer=""  # Ask again
                fi
                ;;
            n|N)
                echo "Exiting."
                exit 0
                ;;
            *)
                echo "Please enter y or n"
                retry_answer=""
                ;;
        esac
    done
fi

echo "Analyzing: $log_file"
echo "Searching for: '$search_word'"
echo ""

# Read line by line and count matches
# The IFS= keeps leading/trailing spaces, read -r prevents backslash interpretation
while IFS= read -r line; do
    if echo "$line" | grep -iq "$search_word"; then
        match_count=$((match_count + 1))
        # Keep the last 5 matches for display later
        # I'm using a simple method - could be better but it works
        temp_matches="$temp_matches"$'\n'"$line"
    fi
done < "$log_file"

echo "=========================================="
echo "              RESULTS"
echo "=========================================="
echo "Found '$search_word' $match_count times"
echo ""

# Show last 5 matches
if [ $match_count -gt 0 ]; then
    echo "Last 5 lines containing '$search_word':"
    echo "------------------------------------------"
    echo "$temp_matches" | tail -5
    echo "------------------------------------------"
else
    echo "No matches found for '$search_word'"
fi

echo ""
echo "Tip: To see all matches, run: grep -i '$search_word' '$log_file'"
echo "=========================================="