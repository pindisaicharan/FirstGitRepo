#! bash/bin

userID=$(id -u)

if [ $userID -eq 0 ]; then
    echo "You are running this script as root."
else
    echo "You are not running this script as root."
    exit 1
fi

validate(){
    if [$1 -eq 0]; then
        echo "$2 executed successfully."
    else
        echo "The $2 failed with exit code $1."
        exit 1
    fi
}

dnf install nginx -y

validate $? "nginx installation"

dnf install mysql -y

validate $? "mysql installation"

echo "All installations completed successfully."