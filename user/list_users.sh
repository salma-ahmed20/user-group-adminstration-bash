# Define the list_all_users function
function list_users {
    users=$(sudo cat /etc/passwd | cut -d: -f1 | sort | tr '\n' '\n')
    whiptail --title "List All Users" --msgbox "All users:\n\n$users" 20 60 --scrolltext
}