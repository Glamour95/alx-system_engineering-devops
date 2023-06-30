# Processes and Signals

This repository contains Bash scripts and a C program related to processes and signals.

## 0. What is my PID

This Bash script displays its own PID.
sylvain@ubuntu$ ./0-what-is-my-pid
4120
sylvain@ubuntu$
File: 0-what-is-my-pid

## 1. List your processes


This Bash script displays a list of currently running processes. It shows all processes for all users, including those which might not have a TTY. The output is displayed in a user-oriented format and shows the process hierarchy.

sylvain@ubuntu$ ./1-list_your_processes | head -50
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         2  0.0  0.0      0     0 ?        S    Feb13   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [ksoftirqd/0]
root         4  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kworker/0:0]
root         5  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kworker/0:0H]
root         7  0.0  0.0      0     0 ?        S    Feb13   0:02  \_ [rcu_sched]
root         8  0.0  0.0      0     0 ?        S    Feb13   0:03  \_ [rcuos/0]
root         9  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [rcu_bh]
root        10  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [rcuob/0]
root        11  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [migration/0]
root        12  0.0  0.0      0     0 ?        S    Feb13   0:02  \_ [watchdog/0]
root        13  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [khelper]
root        14  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kdevtmpfs]
root        15  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [netns]
root        16  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [writeback]
root        17  0.0  0.0      0     0 ?        S<   Feb13   0:00

## 2-show_your_bash_pid

This Bash script displays the lines containing the word "bash" to easily identify the PID of the Bash process.

Usage: `./2-show_your_bash_pid`

## 3-show_your_bash_pid_made_easy

This Bash script displays the PID and process name of processes containing the word "bash".

Usage: `./3-show_your_bash_pid_made_easy`

## 4-to_infinity_and_beyond

This Bash script displays the phrase "To infinity and beyond" indefinitely.

Usage: `./4-to_infinity_and_beyond`

To stop the script, press `Ctrl+C`.

## 5-dont_stop_me_now

This Bash script stops the `4-to_infinity_and_beyond` process.

Usage: `./5-dont_stop_me_now`

## 6-stop_me_if_you_can

This Bash script stops the `4-to_infinity_and_beyond` process without using `kill` or `killall`.

Usage: `./6-stop_me_if_you_can`

## 7-highlander

This Bash script displays the phrase "To infinity and beyond" indefinitely and prints "I am invincible!!!" when receiving a SIGTERM signal.

Usage: `./7-highlander`

To stop the script, press `Ctrl+C`.

## 67-stop_me_if_you_can

This Bash script stops the `7-highlander` process instead of the `4-to_infinity_and_beyond` one.

Usage: `./67-stop_me_if_you_can`

## 8-beheaded_process

This Bash script kills the `7-highlander` process.

Usage: `./8-beheaded_process`

## 9-process_and_pid_file (Advanced)

This Bash script creates the file `/var/run/myscript.pid` containing its PID, displays specific messages upon receiving signals, and deletes the file when receiving SIGQUIT or SIGTERM signals.

Usage: `sudo ./9-process_and_pid_file`

## 10-manage_my_process (Advanced)

This Bash script manages the `manage_my_process` script. It starts, stops, or restarts the script and creates/deletes the PID file.

Usage: `sudo ./10-manage_my_process {start|stop|restart}`

## 11-zombie (Advanced)

This C program creates 5 zombie processes and displays their PIDs.

Usage: `gcc 11-zombie.c -o zombie` and `./zombie`

Note: The C program needs to be compiled before executing.

#endif
