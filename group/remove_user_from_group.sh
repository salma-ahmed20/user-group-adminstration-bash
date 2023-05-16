# Define the remove_user_from_group function
function remove_user_from_group {
    username=$(whiptail --title "Remove User from Group" --inputbox "Enter the username of the user to remove from a group:" 8 60 3>&1 1>&2 2>&3)
    groupname=$(whiptail --title "Remove User from Group" --inputbox "Enter the name of the group to remove $username from:" 8 60 3>&1 1>&2 2>&3)
    sudo gpasswd -d $username $groupname
    whiptail --title "Remove User from Group" --msgbox "$username has been removed from the $groupname group." 8 60
}
