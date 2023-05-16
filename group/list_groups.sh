# Define the list_all_groups function
function list_groups {
    groups=$(sudo cat /etc/group | cut -d: -f1 | sort | tr '\n' '\n')
    whiptail --title "List All Groups" --msgbox "All groups:\n\n$groups" 20 60 --scrolltext
}