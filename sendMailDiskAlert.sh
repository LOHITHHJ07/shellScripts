#!/bin/bash




##################### this script is about sending alert mail if  disk usage exceeds using smtp server #####################

threshold=30
disk_used=$(df -h | awk '{print $5}'|sed '1d'| head -1 | sed 's/%//g' )

# Function to send email
send_email() {
    sender="lohithhj07@gmail.com"  # Your email address
    receiver="lohith@workplay.digital"  # Recipient's email address
    gapp="mdfg qtfz cvgm jwld"  # Your Google App password
    sub="Disk Space Alert"
    body="Disk space is critically low. Please take necessary action."

    # Sending email using curl
    response=$(curl -s --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
        --mail-from "$sender" \
        --mail-rcpt "$receiver" \
        --user "$sender:$gapp" \
        -T <(echo -e "From: $sender\nTo: $receiver\nSubject: $sub\n\n$body"))

    if [ $? -eq 0 ]; then
        echo "Email sent successfully."
    else
        echo "Failed to send email."
        echo "Response: $response"
    fi
}

# Main script

if [ $disk_used -gt $threshold ]; then
    send_email
fi




