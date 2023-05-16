# User-Group-Adminstration-Bash
A Bash script using Whiptail to provide an interactive terminal UI for common admin tasks.

This script will:
## Show a main menu using whiptail --menu
Get the user's choice
Run the corresponding code block based on the choice
Show a result message box
Loop the menu until the user chooses "Exit"

### Inside each option, you can implement the logic to:
Add a user
Remove a user
Change a password
List all users
List all groups
create a group
delete a group


## Usage
Make the script executable:


chmod +x menu.sh

Run the script:


./menu.sh


You'll see the main menu:


-User Management options
-Group Management options
Exit

Choose an option:

Select an option to access that section's features.
