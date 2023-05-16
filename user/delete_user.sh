# Define the delete_user function
function delete_user {
    username=$(whiptail --title "Delete User" --inputbox "Enter the username of the user to delete:" 8 60 3>&1 1>&2 2>&3)
    sudo userdel -r $username
    whiptail --title "Delete User" --msgbox "$username has been deleted from the system." 8 60
}