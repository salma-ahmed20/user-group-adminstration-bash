# Define the delete_group function
function delete_group {
    groupname=$(whiptail --title "Delete Group" --inputbox "Enter the name of the group to delete:" 8 60 3>&1 1>&2 2>&3)
    sudo groupdel $groupname
    whiptail --title "Delete Group" --msgbox "$groupname group has been deleted." 8 60
}