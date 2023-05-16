# Define the add_user function

function add_user {
    username=$(whiptail --title "Add User" --inputbox "Enter the username of the new user:" 8 60 3>&1 1>&2 2>&3)
    password=$(whiptail --title "Add User" --passwordbox "Enter the password for the new user:" 8 60 3>&1 1>&2 2>&3)
    sudo useradd -m $username
    echo "$username:$password" | sudo chpasswd
    whiptail --title "Add User" --msgbox "$username has been added to the system." 8 60
}