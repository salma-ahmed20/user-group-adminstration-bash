# Define the create_group function
function create_group {
    groupname=$(whiptail --title "Create Group" --inputbox "Enter the name of the new group:" 8 60 3>&1 1>&2 2>&3)
    sudo groupadd $groupname
    whiptail --title "Create Group" --msgbox "$groupname group has been created." 8 60
}