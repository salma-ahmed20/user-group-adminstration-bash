
# Define the change_shell function
function chage_shell {
    username=$(whiptail --title "Change User Shell" --inputbox "Enter the username of the user to change the shell for:" 8 60 3>&1 1>&2 2>&3)
    shell=$(whiptail --title "Change User Shell" --inputbox "Enter the path to the new shell for $username:" 8 60 3>&1 1>&2 2>&3)
    sudo chsh -s $shell $username
    whiptail --title "Change User Shell" --msgbox "Shell for $username has been changed to $shell." 8 60
}
