# Define the add_user_to_group function
function add_user_to_group {
    username=$(whiptail --title "Add User to Group" --inputbox "Enter the username of the user to add to a group:" 8 60 3>&1 1>&2 2>&3)
    groupname=$(whiptail --title "Add User to Group" --inputbox "Enter the name of the group to add $username to:" 8 60 3>&1 1>&2 2>&3)
    sudo usermod -a -G $groupname $username
    whiptail --title "Add User to Group" --msgbox "$username has been added to the $groupname group." 8 60
}