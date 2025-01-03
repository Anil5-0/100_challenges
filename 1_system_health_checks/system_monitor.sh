#!/bin/bash 

# enable debug mode
DEBUG=true
if [[ $DEBUG -eq true ]]; then 
    echo "$DEBUG"
    set -x
fi

EMAIL="anilkumar88975@gmail.com"

REPORT_FILE="/tmp/system_health_report.txt"

# function to check disk usage using df command
check_disk_usage() {
    echo "=== disk usage ===" >> $REPORT_FILE
    df -h >> $REPORT_FILE
    cat $REPORT_FILE
}

#function to monitor services using systemctl
monitor_services() {
    echo "=== running services ===" >> $REPORT_FILE
    systemctl list-units --type=service --state=running >> $REPORT_FILE
    cat $REPORT_FILE
}

# function to check memory usage using free command
check_memory_usage() {
    echo "=== memory usage ===" >> $REPORT_FILE
    free -m >> $REPORT_FILE
    cat $REPORT_FILE
}

# function to check cpu usage using top command
check_cpu_usage() {
    echo "=== cpu usage ===" >> $REPORT_FILE
    top -n 1 -b >> $REPORT_FILE
    cat $REPORT_FILE
}

# function to send email with the report
send_email() {
    mail -s "System Health Report" $EMAIL < $REPORT_FILE
}

main() {
    while true; do 
        echo "==============================="
        echo "1. Check Disk Usage"
        echo "2. Monitor Services"
        echo "3. Check Memory Usage"
        echo "4. Check CPU Usage"
        echo "5. Send Email"
        echo "6. Exit"
        echo "==============================="

        read -p "Enter your choice: (1-6)" choice

        switch $choice in 
            1)
                check_disk_usage
                ;;
            2)
                monitor_services
                ;;
            3)
                check_memory_usage
                ;;
            4)
                check_cpu_usage
                ;;
            5)
                send_email
                ;;
            6)
                exit 0
                ;;
            *)
                echo "Invalid choice. Please select a valid option (1-6)"
                ;;
        esac
    done
}


    
