# Define the change_password function
function chage_password {
    username=$(whiptail --title "Change User Password" --inputbox "Enter the username of the user to change the password for:" 8 60 3>&1 1>&2 2>&3)
    password=$(whiptail --title "Change User Password" --passwordbox "Enter the new password for $username:" 8 60 3>&1 1>&2 2>&3)
    echo "$username:$password" | sudo chpasswd
    whiptail --title "Change User Password" --msgbox "Password for $username has been changed." 8 60
}
