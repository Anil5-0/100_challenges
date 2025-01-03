# Menu-driven System Health Checks Script

## Objective:
Task is to develop a menu-driven script that performs essential system health checks. This tool should allow users to select from the following options:

- Check Disk Usage
- Monitor Running Services
- Assess Memory Usage
- Evaluate CPU Usage
- Send a Comprehensive Report via Email


## Requirements:
- Implement exception handling to manage potential errors gracefully.
- Include debugging features to help track the script’s execution.
- Ensure the script is user-friendly and well-documented for beginners.


## Why This Matters:
Understanding system health checks is crucial for maintaining high reliability and availability in any digital infrastructure. This challenge will not only improve your scripting skills but also deepen your understanding of system monitoring, which is a key responsibility of SREs.

## Key Learnings
- got to know the difference between [] and [[]]
- implementation of case statement in bash
- systemctl list-units --type=service --state=running | to monitor running services
- top is interactive by default. To run it in batch mode use -b flag, -n 1 for single iteration 
- main() is not entrypoint of the program unlike in C++, need to call it explicitly.
- ;; is similar to break statement, which says control should move to end of the program.
- *) is used to match default case.
- to run infinite loop in bash, use while true;




