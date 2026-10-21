#!/Bin/Bash

userID=$(id -u)
logs_file="/var/log/saicharan/${0}.log"

if [ $userID -eq 0 ]; then
    echo "You are running this script as root."
else
    echo "You are not running this script as root."
    exit 1
fi  

mkdir -p /var/log/saicharan

echo "Script started execution at $(date +"%F %T")" &>> $logs_file

validate(){
    if [[ "$1" -eq 0 ]]; then
        echo "$2 executed successfully." &>> $logs_file
    else
        echo "The $2 failed with exit code $1." &>> $logs_file
        exit 1
    fi
}

dnf install nginx -y &>> $logs_file
validate $? "Initial validation"

echo "the End"
