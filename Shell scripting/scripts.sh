#!/bin/bash

# Function to create a new user
create_user() {
    read -p "Enter new username: " username
    if id "$username" &>/dev/null; then
        echo "Error: User '$username' already exists."
        exit 1
    fi
    read -s -p "Enter password: " password
    echo
    sudo useradd -m "$username"
    echo "$username:$password" | sudo chpasswd
    echo "User '$username' created successfully."
}

# Function to delete an existing user
delete_user() {
    read -p "Enter username to delete: " username
    if ! id "$username" &>/dev/null; then
        echo "Error: User '$username' does not exist."
        exit 1
    fi
    sudo userdel -r "$username"
    echo "User '$username' deleted successfully."
}

# Function to reset user password
reset_password() {
    read -p "Enter username for password reset: " username
    if ! id "$username" &>/dev/null; then
        echo "Error: User '$username' does not exist."
        exit 1
    fi
    read -s -p "Enter new password: " password
    echo
    echo "$username:$password" | sudo chpasswd
    echo "Password for user '$username' reset successfully."
}

# Function to list all users
list_users() {
    echo "Listing all users:"
    awk -F: '$3 >= 1000 {print "Username: "$1", UID: "$3}' /etc/passwd
}

# Function to display help information
show_help() {
    echo "Usage: $0 [OPTION]"
    echo "User Management Script"
    echo "  -c, --create     Create a new user account"
    echo "  -d, --delete     Delete an existing user account"
    echo "  -r, --reset      Reset password for a user account"
    echo "  -l, --list       List all user accounts"
    echo "  -h, --help       Display this help message"
}

# Parse command-line arguments
case "$1" in
    -c|--create)
        create_user
        ;;
    -d|--delete)
        delete_user
        ;;
    -r|--reset)
        reset_password
        ;;
    -l|--list)
        list_users
        ;;
    -h|--help)
        show_help
        ;;
    *)
        echo "Invalid option. Use -h or --help for usage information."
        exit 1
        ;;
esac

