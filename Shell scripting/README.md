
# User Account Management Script

## Overview
As part of Week 3 Challenge 1 in DevOps - Zero to Hero (Junoon Batch 9), I built a powerful Bash script to streamline user account management on Linux systems. This script simplifies complex administrative tasks with just a few commands:
This Bash script allows administrators to manage user accounts on a Linux system. The script provides options for creating, deleting, resetting passwords, and listing user accounts

✅ Challenge-1 Completed 

✅ Create Users: Easily add new users with secure passwords.

❌ Delete Users: Safely remove user accounts when they’re no longer needed.

🔑 Reset Passwords: Quickly update passwords for existing users.

📋 List All Users: View all user accounts along with their UIDs in a clean, organized format

## Features
- **Create User Account (-c or --create):**
  - Prompts the user for a username and password.
  - Checks if the username already exists before creating the account.
  - Displays a success message upon successful account creation.

- **Delete User Account (-d or --delete):**
  - Prompts the user for the username to delete.
  - Checks if the username exists before deleting the account.
  - Displays a confirmation message after successful deletion.

- **Reset User Password (-r or --reset):**
  - Prompts the user for the username and a new password.
  - Checks if the username exists before resetting the password.
  - Displays a success message with the updated password.

- **List User Accounts (-l or --list):**
  - Displays all existing user accounts along with their User IDs (UIDs).

- **Help Information (-h or --help):**
  - Displays usage information and available command-line options.

## Usage
Run the script with the following command-line options:

```sh
./user_management.sh [OPTION]
```

### Available Options
| Option      | Description                                     |
|------------|---------------------------------|
| `-c, --create`  | Create a new user account.   |
| `-d, --delete`  | Delete an existing user account. |
| `-r, --reset`   | Reset the password of a user account. |
| `-l, --list`    | List all user accounts. |
| `-h, --help`    | Display help information. |

## Prerequisites
- The script must be executed with `sudo` privileges to perform user management tasks.
- Ensure the system has `useradd`, `userdel`, and `chpasswd` commands available.

## Example Usage
1. **Create a new user:**
   ```sh
   sudo ./user_management.sh -c
   ```
   Enter the username and password when prompted.

2. **Delete a user:**
   ```sh
   sudo ./user_management.sh -d
   ```
   Enter the username to be deleted when prompted.

3. **Reset a user password:**
   ```sh
   sudo ./user_management.sh -r
   ```
   Enter the username and new password when prompted.

4. **List all users:**
   ```sh
   sudo ./user_management.sh -l
   ```

5. **Display help information:**
   ```sh
   ./user_management.sh -h
   ```

## Notes
- User accounts with UID >= 1000 are considered normal users.
- The script will exit gracefully with an appropriate message if the username does not exist during deletion or password reset.

## Author
This script was created as part of the **Week 3 Challenge** in the 90 Days of DevOps program.

