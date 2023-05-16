#!/bin/bash
source source.sh;

# Define the main menu options
OPTIONS=(1 "Add user"
         2 "List users"
         3 "Delete user"
         4 "Change user password"
         5 "Change user shell"
         6 "Create group"
         7 "List groups"
         8 "Delete group"
         9 "Add user to group"
         10 "Remove user from group"
         11 "Exit")

# Define the menu function
function menu {
    while true; do
        choice=$(whiptail --title "User and Group Administration Menu" --menu "Choose an option" 18 60 11 "${OPTIONS[@]}" 3>&1 1>&2 2>&3)
        case $choice in
            1) add_user;;
            2) list_users;;
            3) delete_user;;
            4) chage_password;;
            5) chage_shell;;
            6) create_group;;
            7) list_groups;;
            8) delete_group;;
            9) add_user_to_group;;
            10) remove_user_from_group;;
            11) exit 0;;
        esac
    done
}


# Call the menu function to start the script
menu