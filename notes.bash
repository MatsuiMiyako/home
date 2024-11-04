#!/bin/bash
# glossary 
glossary="1. Navigation in Linux
2. Basic Definitions of Networking
3. Basic Networking Commands
4. Operating Systems
5. Computer Components
6. Git Commands Summary
7. Bash Scripting
8. System Monitoring
9. System Security
10. Regex
11. Special Symbols"

# Function to display the table of contents
function display_table_of_contents() {
    clear  # Clear the terminal
    echo "Table of Contents"
    echo "-----------------"
    echo -e "$glossary"
    echo
}

# Function for user input
function get_user_input() {
    read -p "Enter the section number to go to (0 to exit): " choice
    if [ "$choice" -eq 0 ]; then
        echo "Exiting..."
        exit 0
    elif [ "$choice" -eq 1 ]; then
        navigation_in_linux
    elif [ "$choice" -eq 2 ]; then
        basic_networking_definitions
    elif [ "$choice" -eq 3 ]; then
        basic_networking_commands
    elif [ "$choice" -eq 4 ]; then
        operating_systems
    elif [ "$choice" -eq 5 ]; then
        computer_components
    elif [ "$choice" -eq 6 ]; then
        git_commands_summary
    elif [ "$choice" -eq 7 ]; then
        basic_bash_scripting
    elif [ "$choice" -eq 8 ]; then
        system_monitoring
    elif [ "$choice" -eq 9 ]; then
        system_security
    elif [ "$choice" -eq 10 ]; then
        regex_expressions
    elif [ "$choice" -eq 11 ]; then
        special_symbols
    else
        echo "Invalid choice. Please enter a valid section number."
    fi
}

# Define navigation_in_linux
function navigation_in_linux() {
    clear
    echo "Navigation in Linux"
    echo "-------------------"
    echo "Commands List:"
    echo "- ls"
    echo "- cd"
    echo "- pwd"
    echo "- mkdir"
    echo "- rmdir"
    echo
    echo "Command Details:"
    echo "----------------"
    echo
    echo "- \`ls\`"
    echo "  - Purpose: Lists the contents of a directory."
    echo "  - Usage: \`ls\` for basic listing, \`ls -l\` for detailed listing, \`ls -a\` to include hidden files."
    echo "  - Notes: Essential for quickly viewing what's in the current directory."
    echo
    echo "- \`cd\`"
    echo "  - Purpose: Changes the current directory."
    echo "  - Usage: \`cd [directory path]\` to move to a specific directory, \`cd ..\` to move up one directory level, \`cd\` or \`cd ~\` to return to the home directory."
    echo "  - Notes: Most commonly used for navigating through the filesystem."
    echo
    echo "- \`pwd\`"
    echo "  - Purpose: Prints the current directory path."
    echo "  - Usage: \`pwd\` to display the full path of the current directory."
    echo "  - Notes: Useful for confirming your current location in the filesystem."
    echo
    echo "- \`mkdir\`"
    echo "  - Purpose: Creates a new directory."
    echo "  - Usage: \`mkdir [directory name]\` to create a new directory in the current location."
    echo "  - Notes: Handy for organizing files into new folders."
    echo
    echo "- \`rmdir\`"
    echo "  - Purpose: Removes a directory."
    echo "  - Usage: \`rmdir [directory name]\` to delete an empty directory."
    echo "  - Notes: Used for cleaning up and removing unused directories. Note that the directory must be empty."
    echo
    echo
    echo "CRUD Operations on Files and Directories"
    echo "---------------------------------------"
    echo "- Create:"
    echo "  - \`touch filename.txt\`: Creates an empty file."
    echo "  - \`mkdir myfolder\`: Creates a new directory."
    echo
    echo "- Read:"
    echo "  - \`cat filename.txt\`: Displays the contents of a file."
    echo "  - \`less filename.txt\`: Allows you to scroll through a file."
    echo
    echo "- Update:"
    echo "  - \`nano filename.txt\`: Opens a file in the Nano text editor."
    echo "  - \`echo 'Text' >> filename.txt\`: Appends text to a file."
    echo
    echo "- Delete:"
    echo "  - \`rm filename.txt\`: Removes a file."
    echo "  - \`rmdir myfolder\`: Removes an empty directory."
    echo "  - \`rm -r myfolder\`: Removes a directory and its contents recursively."
    echo
    echo
    echo "File Permissions and \`chmod\`"
    echo "-----------------------------"
    echo "- Understanding Permissions:"
    echo "  - Use \`ls -l\` to view file permissions."
    echo "  - Permissions are shown as \`-rwxrwxrwx\`, divided into User (u), Group (g), and Others (o)."
    echo "    - r: Read (4)"
    echo "    - w: Write (2)"
    echo "    - x: Execute (1)"
    echo
    echo "- Changing Permissions:"
    echo "  - Symbolic method:"
    echo "    - \`chmod u+x filename\`: Adds execute permission for the user."
    echo "    - \`chmod g-w filename\`: Removes write permission from the group."
    echo
    echo "  - Numeric method:"
    echo "    - \`chmod 755 filename\`: Sets permissions to \`rwxr-xr-x\`."
    echo
    echo "Tips:"
    echo "  - Practice changing permissions and observe the effects."
    echo "  - Be cautious with \`rm\` commands; deleted files can't be easily recovered."
    echo
    get_user_input
}

# Define basic_networking_definitions
function basic_networking_definitions() {
    clear
    echo "Basic Definitions:"
    echo "------------------"
    echo "- IP address (IPv4)"
    echo "      Internet Protocol (fourth version) that uses a 32-bit address to express four sets of decimal numbers."
    echo "      It can be represented like xxx.xxx.xxx.xxx. or xxxxxxxx.xxxxxxxx.xxxxxxxx.xxxxxxxx in binary."
    echo "- Subnet Masks"
    echo "      A 32-bit number that separates the IP address into host and network portions. The first 3 sets are the network portion. The last set is the host address."
    echo "- Gateway"
    echo "      An entry and exit point for data traffic between different networks"
    echo "- DNS (Domain Server Address)"
    echo "      It translates human-readable domain names into IP addresses"
    echo "- Network Switch"
    echo "      A device that functions at the data link layer of the Open Systems Interconnection model (OSI)."
    echo "      Connects devices within a local area network (LAN) and uses MAC address to efficiently forward data to the appropriate devices."
    echo "- Network Router"
    echo "      A device that works on the network layer of the OSI model."
    echo "      Forwards data between different networks or subnets based on IP addresses, finding the best path to reach their destinations."
    echo "- Access Points"
    echo "      They are devices that allow wireless connections to a wired network via wifi."
    echo "- Mac Address"
    echo "      Media Access Control address is a unique identifier for network interfaces for communications over a network."
    echo "      It is a hardware address embedded in the network interface card."
    echo "- Ports"
    echo "      Virtual Endpoints in networked systems."
    echo "      They are used in networking to identify specific processes or services on a device."
    echo "      They allow multiple services to operate on a single device without interference."
    echo "- Types of Networks (WAN, LAN, PAN, MAN, VPN):"
    echo "      WAN (Wide Area Network): Spans a large geographical area, connecting multiple LANs."
    echo "      LAN (Local Area Network): Limited to a small geographic area, typically within a single building or campus."
    echo "      PAN (Personal Area Network): A network for personal devices, often within the range of an individual person."
    echo "      MAN (Metropolitan Area Network): Covers a larger geographic area than a LAN but smaller than a WAN, usually within a city."
    echo "      VPN (Virtual Private Network): A secure, encrypted connection over the internet, allowing users to access a private network remotely."
    echo
    echo "- Types of Protocols in Computer Networks:"
    echo "      TCP/IP (Transmission Control Protocol/Internet Protocol): A suite of protocols used for communication on the internet."
    echo "      HTTP (Hypertext Transfer Protocol): Used for transmitting hypertext over the internet, the foundation of data communication on the World Wide Web."
    echo "      FTP (File Transfer Protocol): Used for transferring files between a server and a client on a network."
    echo "      UDP (User Datagram Protocol): A connectionless protocol providing a faster but less reliable communication compared to TCP."
    echo "      DNS (Domain Name System): Resolves domain names to IP addresses, translating user-friendly names to numerical IP addresses."
    echo
    echo "- Network Security Measures:"
    echo "      Firewall: Monitors and controls incoming and outgoing network traffic based on predetermined security rules."
    echo "      VPN (Virtual Private Network): Provides a secure, encrypted connection over the internet for remote access to a private network."
    echo "      Antivirus Software: Protects against malicious software (malware) such as viruses and ransomware."
    echo "      Intrusion Detection System (IDS): Monitors network or system activities for malicious activities or security policy violations."
    echo "      Two-Factor Authentication (2FA): Requires users to provide two different authentication factors to access a system or application."
    echo
    echo 
    echo "- Internet-related Terminology:"
    echo "      World Wide Web (WWW): A system of interlinked hypertext documents accessed via the internet."
    echo "      Browser: Software used to access and view information on the World Wide Web."
    echo "      URL (Uniform Resource Locator): A web address that specifies the location of a resource on the internet."
    echo "      ISP (Internet Service Provider): A company that provides internet access to customers."
    echo "      Wi-Fi (Wireless Fidelity): A technology that allows devices to connect to the internet wirelessly."
    
    echo "      Broadband: High-speed internet access that provides faster data transmission."
    echo "      Bandwidth: The maximum rate of data transfer across a network, measured in bits per second."
    echo "      Cloud Computing: The delivery of computing services, including storage and processing power, over the internet."
    echo "      Streaming: Transmitting data, usually audio or video, in a continuous flow over the internet."
    echo "      Download: Retrieving data from a remote server to a local device."
    
    echo "      Upload: Transmitting data from a local device to a remote server."
    echo "      IP Address (Internet Protocol Address): A numerical label assigned to each device connected to a computer network."
    echo "      Firewall: A security system that monitors and controls incoming and outgoing network traffic."
    echo "      Cookie: Small pieces of data stored on a user's device by a web browser, often used for user tracking."
    echo "      Search Engine: A software system designed to search for information on the internet."

    get_user_input
}

# Define basic_networking_commands
function basic_networking_commands() {
    clear
    echo "Networking Commands"
    echo "-------------------"
    echo "1. ifconfig:"
    echo "   - Display or configure network interface parameters."
    echo
    echo "2. ip:"
    echo "   - Show or manipulate routing, devices, policy routing, and tunnels."
    echo
    echo "3. traceroute:"
    echo "   - Print the route packets take to network host."
    echo
    echo "4. tracepath:"
    echo "   - Traces path to destination discovering MTU along this path."
    echo
    echo "5. ping:"
    echo "   - Send ICMP ECHO_REQUEST to network hosts."
    echo
    echo "6. netstat:"
    echo "   - Display networking information (routing tables, interface statistics, masquerade connections, etc.)."
    echo
    echo "7. ss:"
    echo "   - Show socket statistics."
    echo
    echo "8. dig:"
    echo "   - DNS lookup utility."
    echo
    echo "9. nslookup:"
    echo "   - Query Internet name servers interactively."
    echo
    echo "10. route:"
    echo "   - Show/manipulate the IP routing table."
    echo
    echo "11. host:"
    echo "   - DNS lookup utility."
    echo
    echo "12. arp:"
    echo "   - Manipulate the system ARP cache."
    echo
    echo "13. iwconfig:"
    echo "   - Configure a wireless network interface."
    echo
    echo "14. hostname:"
    echo "   - Show or set the system's host name."
    echo
    echo "15. curl or wget:"
    echo "   - Command-line tools for transferring data with URLs."
    echo
    echo "16. mtr:"
    echo "   - Combines the functionality of 'traceroute' and 'ping'."
    echo
    echo "17. whois:"
    echo "   - Client for the whois directory service."
    echo
    echo "18. ifplugstatus:"
    echo "   - Check the link status of network interfaces."
    echo
    echo "19. iftop:"
    echo "   - Display bandwidth usage on an interface."
    echo
    echo "20. tcpdump:"
    echo "   - Dump traffic on a network."
    echo
    get_user_input
}

# Define operating_systems
function operating_systems() {
    clear
    echo "Operating Systems"
    echo "-----------------"
    echo "1. Kernel:"
    echo "   - Core manager of the computer."
    echo "   - Does important tasks like scheduling jobs and talking to hardware."

    echo "2. Shell:"
    echo "   - Talks to the kernel for you."
    echo "   - You tell it what to do, and it talks to the computer for you."

    echo "3. File Systems:"
    echo "   - Like a digital filing cabinet."
    echo "   - Keeps your files organized and makes sure you can find them."

    echo "4. Operating System (OS):"
    echo "   - Boss of the computer."
    echo "   - Makes everything work together, lets you use programs and apps."

    echo "5. Firmware:"
    echo "   - Instructions built into devices."
    echo "   - Tells devices how to start and do their jobs."

    echo "6. Hardware:"
    echo "   - The physical parts of the computer."
    echo "   - Things you can touch, like the screen, keyboard, and chips."

    echo "7. BIOS (Basic Input/Output System):"
    echo "   - Starter for the computer."
    echo "   - Gets things going when you turn it on."

    get_user_input
}

# Define computer_components
function computer_components() {
    clear
    echo "Computer Components"
    echo "-------------------"
    echo "1. CPU (Central Processing Unit):"
    echo "   - Brain of the computer."
    echo "   - Performs calculations and executes instructions."

    echo "2. RAM (Random Access Memory):"
    echo "   - Short-term memory for the computer."
    echo "   - Stores data that is actively being used or processed."

    echo "3. GPU (Graphics Processing Unit):"
    echo "   - Specialized for rendering graphics."
    echo "   - Handles tasks related to visual output and image processing."

    echo "4. Motherboard:"
    echo "   - Main circuit board connecting all components."
    echo "   - Provides communication and power distribution."

    echo "5. Storage (HDD/SSD):"
    echo "   - Long-term memory for the computer."
    echo "   - Stores data even when the computer is turned off."

    echo "6. Power Supply:"
    echo "   - Converts electrical power for the computer's use."
    echo "   - Supplies power to all components."

    echo "7. Cooling System:"
    echo "   - Prevents overheating of components."
    echo "   - Includes fans or liquid cooling solutions."

    echo "8. Input Devices:"
    echo "   - Devices for user interaction."
    echo "   - Examples include keyboards and mice."

    echo "9. Output Devices:"
    echo "   - Devices for displaying information."
    echo "   - Examples include monitors and printers."

    echo "10. Expansion Cards:"
    echo "   - Additional components for specific tasks."
    echo "   - Examples include graphics cards and network cards."

    get_user_input
}

# Define git_commands_summary
function git_commands_summary() {
    clear
    echo "Git Commands Summary"
    echo "--------------------"
    echo "- Initialize Repository: git init"
    echo "- Configure Git: git config --global user.name 'Your Name', git config --global user.email 'youremail@example.com'"
    echo "- Check Status: git status"
    echo "- Stage Files: git add filename, git add ."
    echo "- Commit Changes: git commit -m 'message'"
    echo "- View Log: git log"
    echo "- Create and Switch Branch: git checkout -b branch-name"
    echo "- Switch Branch: git checkout branch-name"
    echo "- Merge Branches: git merge branch-name"
    echo "- Delete Branch: git branch -d branch-name"
    echo "- Undo Changes in Working Directory: git restore filename (newer), git checkout -- filename (older)"
    echo "- Remove Cached File: git rm --cached filename"
    echo "- Set Alias: git config --global alias.alias-name command"
    echo "- Tag a Commit: git tag -a v1.0 -m 'message'"
    echo "- Reset Commits: git reset --soft HEAD~1, git reset --hard HEAD~1"
    echo
    get_user_input
}

# Define basic bash scripting
function basic_bash_scripting() {
    clear
    echo "Bash Scripting Summary"
    echo "--------------------"
    echo "1. echo - Outputs text or variables to the terminal"
    echo 'Example:'
    echo '    echo "Hello, World!"  # Prints Hello, World to the terminal'
    echo '    echo $HOME  # Displays the value of the HOME environment variable (e.g., /home/username)'

    echo "2. read - Reads input from the user and stores it in a variable"
    echo 'Example:'
    echo '    read name  # Waits for the user to input a name'
    echo '    echo "Hello, $name!"  # Prints a personalized greeting using the input'

    echo "3. touch - Creates a new empty file or updates the timestamp of an existing file"
    echo 'Example:'
    echo '    touch newfile.txt  # Creates an empty file named newfile.txt'
    echo '    touch existingfile.txt  # Updates the last modified timestamp of existingfile.txt'

    echo "4. man - Displays the manual page (documentation) for a command"
    echo 'Example:'
    echo '    man ls  # Opens the manual for the ls command, showing all options and usage examples'

    echo "5. chmod - Changes file or directory permissions"
    echo 'Example:'
    echo '    chmod 755 script.sh  # Gives the owner full permissions and read/execute permissions to others'
    echo '    # This means: 7 (owner: read, write, execute), 5 (group: read, execute), 5 (others: read, execute)'

    echo "6. chown - Changes the ownership of a file or directory"
    echo 'Example:'
    echo '    chown user:group file.txt  # Assigns ownership of file.txt to user and the group'

    echo "7. grep - Searches for a pattern within a file or output"
    echo 'Example:'
    echo '    grep "error" log.txt  # Searches for the word "error" in log.txt'
    echo '    ls | grep ".txt"  # Filters and shows only .txt files in the current directory'

    echo "8. find - Searches for files or directories based on criteria"
    echo 'Example:'
    echo '    find /home/user -name "*.txt"  # Finds all .txt files under /home/user'
    echo '    find /var -size +100M  # Finds files larger than 100MB in /var'

    echo "9. head and tail - Shows the first or last lines of a file"
    echo 'Example:'
    echo '    head -n 10 file.txt  # Displays the first 10 lines of file.txt'
    echo '    tail -n 5 file.txt  # Displays the last 5 lines of file.txt'
    echo '    tail -f logfile.txt  # Continuously shows new lines added to logfile.txt in real-time'

    echo "10. wc - Counts lines, words, or characters in a file"
    echo 'Example:'
    echo '    wc file.txt  # Shows line, word, and character count for file.txt'
    echo '    wc -l file.txt  # Shows only the number of lines in file.txt'

    echo "11. ps - Lists currently running processes"
    echo 'Example:'
    echo '    ps aux  # Shows all processes running on the system, with detailed info like memory and CPU usage'

    echo "12. kill - Terminates a process using its process ID (PID)"
    echo 'Example:'
    echo '    kill 1234  # Kills the process with PID 1234'
    echo '    kill -9 1234  # Forcefully kills the process if it doesn’t respond to normal kill'

    echo "13. df - Shows disk space usage on all mounted filesystems"
    echo 'Example:'
    echo '    df -h  # Displays disk usage in human-readable format (e.g., MB, GB)'

    echo "14. du - Shows the size of files and directories"
    echo 'Example:'
    echo '    du -sh /home/user  # Shows the total size of the /home/user directory in human-readable format'

    echo "15. date - Displays the current date and time"
    echo 'Example:'
    echo '    date  # Prints the current date and time'
    echo '    date "+%Y-%m-%d %H:%M:%S"  # Customizes the date/time output to show in this format: YYYY-MM-DD HH:MM:SS'

    echo "16. history - Displays the list of commands you’ve run in this session"
    echo 'Example:'
    echo '    history  # Shows all the commands you’ve used recently'

    echo "17. alias - Creates shortcuts for longer commands"
    echo 'Example:'
    echo '    alias ll="ls -la"  # Now, typing ll will be the same as typing ls -la'
    echo '    unalias ll  # Removes the alias for ll'

    echo "18. uname - Shows system information like kernel version and architecture"
    echo 'Example:'
    echo '    uname -a  # Displays all system information such as OS, kernel version, architecture, etc.'

    echo "19. clear - Clears the terminal screen"
    echo 'Example:'
    echo '    clear  # Clears all previous output in the terminal window'

    get_user_input
}

# Define system monitoring
function system_monitoring() {
    echo "1. Definition: "
    echo "System monitoring in Linux refers to the continuous collection and review of system performance data, such as CPU, memory, disk, and network usage. Monitoring helps administrators ensure the system is running efficiently, quickly detect problems, and maintain overall stability and performance."
    echo ""
    echo "Importance: "
    echo "- Proactive Issue Detection: Helps in identifying performance bottlenecks, high resource consumption, or hardware failures."
    echo "- System Health: Keeps the system stable by managing resource utilization and ensuring processes run optimally."
    echo "- Troubleshooting: System logs and real-time monitoring tools help diagnose issues and take corrective action."
    echo ""
    echo "2. Key Tools:"
    echo ""
    echo "a. top"
    echo "- Definition: 'top' displays real-time information about system processes, CPU, and memory usage."
    echo "- Usage:"
    echo "  - Command: top"
    echo "  - Example: Run 'top' to view running processes, CPU usage, and memory consumption in real-time. You can sort processes by CPU or memory usage. To quit, press 'q'."
    echo ""
    echo "b. htop"
    echo "- Definition: 'htop' is a more user-friendly version of 'top' that shows a colorful and interactive interface for process and system resource monitoring."
    echo "- Usage:"
    echo "  - Command: htop"
    echo "  - Example: Run 'htop' to view CPU, memory, swap usage, and running processes. You can scroll through processes, kill processes, or sort by various criteria. To quit, press 'q'."
    echo ""
    echo "c. df"
    echo "- Definition: 'df' shows the amount of disk space available on the filesystem."
    echo "- Usage:"
    echo "  - Command: df -h"
    echo "  - Example: Run 'df -h' to see disk space usage in a human-readable format (with sizes shown in MB, GB, etc.)."
    echo ""
    echo "d. uptime"
    echo "- Definition: 'uptime' displays how long the system has been running, along with load averages."
    echo "- Usage:"
    echo "  - Command: uptime"
    echo "  - Example: Run 'uptime' to view system uptime and the load averages for the last 1, 5, and 15 minutes."
    echo ""
    echo "3. Log Monitoring: "
    echo ""
    echo "a. journalctl"
    echo "- Definition: 'journalctl' is used to view logs collected by the systemd journal service. It provides an easy way to access logs for diagnosing system problems."
    echo "- Usage:"
    echo "  - Command: journalctl -xe"
    echo "  - Example: Run 'journalctl -xe' to view recent logs with extra details, including any errors that occurred."
    echo ""
    echo "b. /var/log"
    echo "- Definition: '/var/log' is a directory where most log files are stored, such as system, kernel, and application logs."
    echo "- Commands to View Logs:"
    echo "  - View syslog: cat /var/log/syslog"
    echo "  - View kernel log: cat /var/log/kern.log"
    echo "  - Example: Run 'cat /var/log/syslog' to view the system logs."
    echo ""
    echo "4. Self-Made Instructions: Step-by-Step Guide"
    echo ""
    echo "Step 1: Check System Resource Usage"
    echo "- CPU and Memory Usage: Run 'htop' to see live CPU and memory usage in an easy-to-read interface."
    echo "  - Command: htop"
    echo "  - Action: You’ll see a real-time dashboard with CPU usage (by core), memory usage, and a list of running processes. Press 'q' to quit."
    echo ""
    echo "- Disk Space Usage: Run 'df -h' to check how much disk space is used and available."
    echo "  - Command: df -h"
    echo "  - Action: This shows the amount of disk space used and free, displayed in a human-readable format (MB, GB)."
    echo ""
    echo "Step 2: Check Uptime and Load Average"
    echo "- Command: uptime"
    echo "- Action: Displays how long the system has been running and the load averages. A high load average can indicate high CPU usage or many processes waiting for CPU time."
    echo ""
    echo "Step 3: Monitor Logs for Errors or Issues"
    echo "- View System Logs: Run 'journalctl -xe' to check system logs for recent errors or warnings."
    echo "  - Command: journalctl -xe"
    echo "  - Action: Review the output for any error messages that can help diagnose issues."
    echo ""
    echo "- View Specific Logs in /var/log:"
    echo "  - Example: Run 'cat /var/log/syslog' to view the syslog file for system events."
    echo ""
    echo "Step 4: Investigate Specific Processes"
    echo "- Find and Kill a Process: If a process is consuming too many resources, find its PID using 'top' or 'htop', then use 'kill' to terminate it."
    echo "  - Command to kill a process: kill -9 PID"
    echo "  - Example: If process 1234 is problematic, run 'kill -9 1234'."

    get_user_input
}

#Define system security
function system_security() {
    echo "System Security"
    echo ""
    echo "1. Definition: "
    echo "- Principle of Least Privilege: Users and processes should have only the permissions necessary to perform their tasks."
    echo "- Regular System Updates: Keeping the system and installed packages updated to patch known vulnerabilities."
    echo "- Use of Strong Passwords: Enforcing strong password policies for all users to reduce the risk of unauthorized access."
    echo "- Enabling Firewalls: Using a firewall to control incoming and outgoing network traffic."
    echo ""
    echo "2. File Permissions:"
    echo "File permissions in Linux control who can read, write, or execute a file or directory. Permissions are typically represented in three categories: owner, group, and others."
    echo ""
    echo "- Commands for managing file permissions:"
    echo "  - chmod: Used to change the permission of a file or directory."
    echo "  - chown: Used to change the ownership of a file or directory."
    echo "  - ls -l: Used to view file permissions and ownership details."
    echo ""
    echo "- Example: Making a file executable:"
    echo "  - Command: chmod +x filename"
    echo "  - Action: This command adds execute permissions to the file for the owner, group, and others."
    echo ""
    echo "3. User Management:"
    echo "- User management involves creating, modifying, and deleting user accounts, as well as assigning appropriate permissions."
    echo ""
    echo "- Commands for managing users:"
    echo "  - adduser: Creates a new user and sets up a home directory."
    echo "  - usermod: Modifies user accounts, such as changing a user's group."
    echo "  - deluser: Deletes a user account and optionally removes the user's home directory."
    echo ""
    echo "- Example commands for user management:"
    echo "  - Create a user: adduser username"
    echo "  - Modify a user: usermod -aG groupname username"
    echo "  - Delete a user: deluser username"
    echo ""
    echo "- Assigning permissions to users:"
    echo "  - Command: chown username:groupname filename"
    echo "  - Action: Changes the ownership of a file or directory to a specific user and group."
    echo ""
    echo "4. Firewall Basics:"
    echo "The Uncomplicated Firewall (ufw) is a simple and user-friendly interface for managing iptables in Linux, helping users control network traffic."
    echo ""
    echo "- Commands for managing ufw:"
    echo "  - Enable the firewall: ufw enable"
    echo "  - Allow a port: ufw allow port"
    echo "  - Deny a port: ufw deny port"
    echo ""
    echo "- Example: To allow HTTP traffic on port 80, run: ufw allow 80"
    echo ""
    echo "5. Self-Made Instructions: Securing Files and Setting Up a Firewall"
    echo ""
    echo "Step 1: Secure a folder by adjusting file permissions"
    echo "- Use chmod to restrict access to a directory so that only the owner has permission to read, write, or execute."
    echo "  - Command: chmod 700 foldername"
    echo "  - Action: This command gives the owner full access (read, write, and execute) and denies access to everyone else."
    echo ""
    echo "Step 2: Set up basic firewall rules using ufw"
    echo "- Enable the firewall to start protecting the system from unauthorized access."
    echo "  - Command: ufw enable"
    echo "  - Action: This enables the firewall and starts controlling network traffic."
    echo ""
    echo "- Allow essential ports for services you need (e.g., HTTP, SSH)."
    echo "  - Command: ufw allow 22"
    echo "  - Action: This allows incoming SSH traffic on port 22."
    echo ""
    echo "- Deny ports that are not needed to block unwanted traffic."
    echo "  - Command: ufw deny 23"
    echo "  - Action: This denies incoming traffic on port 23 (Telnet)."
    echo ""
    echo "- Check firewall status and rules."
    echo "  - Command: ufw status"
    echo "  - Action: This displays the current status of the firewall and the list of allowed/denied ports."

get_user_input
}

# Define regex expressions 
regex_expressions() {
echo "    Regex Overview:"
echo "    - Regular expressions (regex) are sequences of characters that define a search pattern."
echo "    - They can be used for pattern matching within strings, validating inputs, searching, or manipulating text."

echo
echo "    Key Components of Regex:"

echo "    1. Anchors:"
echo "        ^ : Matches the start of the string."
echo "        $ : Matches the end of the string."
echo "        Example: ^hello matches any string that starts with 'hello'."

echo
echo "    2. Character Classes:"
echo "        [0-9] : Matches any single digit (0-9)."
echo "        [a-z] : Matches any lowercase letter (a-z)."
echo "        [A-Z] : Matches any uppercase letter (A-Z)."
echo "        . : Matches any single character (except for newline)."
echo "        \d : Matches any digit (equivalent to [0-9])."
echo "        \w : Matches any word character (alphanumeric: [a-zA-Z0-9_])."
echo "        \s : Matches any whitespace character (spaces, tabs, newlines)."

echo
echo "    3. Quantifiers:"
echo "        + : Matches one or more occurrences of the previous character/group."
echo "        * : Matches zero or more occurrences."
echo "        ? : Matches zero or one occurrence."
echo "        {n} : Matches exactly n occurrences."
echo "        {n,} : Matches at least n occurrences."
echo "        {n,m} : Matches between n and m occurrences."

echo
echo "    4. Groups and Alternation:"
echo "        (...) : Groups multiple characters together."
echo "        | : Acts as OR (alternation)."
echo "        Example: cat|dog matches 'cat' or 'dog'."

echo
echo "    5. Escape Sequences:"
echo "        \ : Escapes special characters to treat them as literals."
echo "        Example: \. matches a literal dot."

echo
echo "    Examples:"

echo "    1. Matching a Number:"
echo "        ^[0-9]+$ : Matches a string that consists entirely of digits."
echo "        Example: '12345' (valid), 'abc' (invalid)."

echo
echo "    2. Matching an Email Address:"
echo "        ^[\w.%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ : Matches a valid email address format."

echo
echo "    3. Matching a Phone Number:"
echo "        \(\d{3}\) \d{3}-\d{4} : Matches a phone number like '(123) 456-7890'."

echo
echo "    Special Considerations:"
echo "        - Greedy vs. Lazy Matching: * and + are greedy (match as much as possible). Use ? after them to make lazy."
echo "        - Case Sensitivity: By default, regex is case-sensitive. Use (?i) to make case-insensitive."

echo
echo "    Summary of Key Symbols:"
echo "        Anchors: ^, \$"
echo "        Character Classes: [ ], \d, \w, \s"
echo "        Quantifiers: *, +, ?, {n,m}"
echo "        Groups: (...)"
echo "        Alternation: |"
echo "        Escape: \\"

echo
echo "    Resources:"
echo "        - regexlearn.com"
echo "        - regex101.com"

get_user_input
}

# Define special symbols
function special_symbols() {
#!/bin/bash

echo
echo "Special Bash Symbols Overview:"
echo "    - Bash provides a variety of special symbols for comparisons, arithmetic, and pattern matching."
echo "    - These symbols help streamline scripts, making them more readable and efficient."

echo
echo "1. [[ ]] : Test Conditions"
echo "    - [[ ]] is used for conditional testing in Bash."
echo "    - It is safer than using [ ] as it allows for more advanced condition checking (e.g., pattern matching)."
echo "    Example:"
echo "        var=10"
echo "        if [[ \$var -eq 10 ]]; then"
echo "            echo 'Var equals 10'"
echo "        else"
echo "            echo 'Var does not equal 10'"
echo "        fi"
echo "        # This checks if \$var equals 10 and prints accordingly."

echo
echo "2. !~ : Not Matching a Pattern"
echo "    - The !~ operator checks if a string does NOT match a pattern in [[ ]]."
echo "    Example:"
echo "        username='user123'"
echo "        if [[ ! \$username =~ ^[a-zA-Z]+$ ]]; then"
echo "            echo 'Invalid username: Only letters are allowed'"
echo "        else"
echo "            echo 'Username is valid'"
echo "        fi"
echo "        # This checks if \$username contains anything other than letters and prints an error message."

echo
echo "3. Comparison Symbols (Conditionals):"
echo "    == : Checks if two strings are equal."
echo "    != : Checks if two strings are NOT equal."
echo "    >  : Greater than comparison (for strings or numbers)."
echo "    <  : Less than comparison (for strings or numbers)."
echo "    -eq : Tests if two numbers are equal."
echo "    -ne : Tests if two numbers are NOT equal."
echo "    -gt : Tests if one number is greater than another."
echo "    -lt : Tests if one number is less than another."
echo "    Examples:"
echo "        str1='hello'"
echo "        str2='world'"
echo "        if [[ \$str1 == \$str2 ]]; then"
echo "            echo 'Strings are equal'"
echo "        else"
echo "            echo 'Strings are not equal'"
echo "        fi"
echo "        # Checks if two strings are equal."
echo "        num1=5"
echo "        num2=10"
echo "        if [[ \$num1 -lt \$num2 ]]; then"
echo "            echo '\$num1 is less than \$num2'"
echo "        fi"
echo "        # This checks if num1 is less than num2."

echo
echo "4. Logical Operators:"
echo "    && : Logical AND. Executes the second command only if the first one is successful."
echo "    || : Logical OR. Executes the second command only if the first one fails."
echo "    Example:"
echo "        var=15"
echo "        [[ \$var -gt 10 ]] && echo 'Greater than 10' || echo 'Not greater than 10'"
echo "        # This will print 'Greater than 10' if \$var is above 10, otherwise prints 'Not greater than 10'."

echo
echo "5. Arithmetic Calculation with \$(( ))"
echo "    - \$(( )) is used to perform arithmetic calculations in Bash."
echo "    - Inside the parentheses, you can use standard mathematical operators."
echo "    Example:"
echo "        result=\$((5 + 3))"
echo "        echo \"5 + 3 equals \$result\""
echo "        # Prints '5 + 3 equals 8'."
echo "    Arithmetic Operators:"
echo "        +  : Addition."
echo "        -  : Subtraction."
echo "        *  : Multiplication."
echo "        /  : Division."
echo "        %  : Modulo (remainder of division)."
echo "        Example:"
echo "            num1=10"
echo "            num2=3"
echo "            result=\$((num1 % num2))"
echo "            echo \"The remainder of 10 divided by 3 is \$result\""
echo "            # Prints 'The remainder of 10 divided by 3 is 1'."

}

# Main script
while true; do
    display_table_of_contents
    get_user_input
done
