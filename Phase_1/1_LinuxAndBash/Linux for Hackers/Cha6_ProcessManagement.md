#### Process Management
- A Linux system can have hundreds or thousands of processes running at any time
- A process is a program that is running and using system resources - such as a terminal, web browser or text editor

- To see which processes are running on a system -
     - ps - shows which processes are active
    ada00211@WNRH42GPC9 Linux for Hackers % ps
        ```
        PID     TTY       TIME      CMD
        11149   ttys000   0:00.91   -zsh
        5546    ttys001   0:00.02   /bin/zsh -l
        5547    ttys002   0:00.02   /bin/zsh -il
        ```
    - PID - processing ID - a unique ID assigned to processes by the kernel

- To show all processes for all users runnning on the system -
    - ps aux - shows all running processes for all users
    - user - who started the process
    - PID - process ID
    - %cpu - the amount of CPU used by the process
    - %mem - the amount of memory used by the process
    - command - the command that started the process

#### Filtering Processes
- You can filter processes by using grep to search the process name
- E.g. ps aux | grep adobe - searches all running processes and displays only adobe

- Top - shows which processes are using the most resources
    - ? - shows the help menu
    - s - sets the time in seconds top will refresh the list - default is 1 second
    - q - quits top

#### Managing Processes
- All running processes on the system are fighting for resources
- nice can set a processes priority at startup
- renice can change a processes priority once its running
- nice values go from -20 upto +19 - 
    - a negative (-) value gives a higher priority 
    - a positive (+) value gives a lower priority
- A process owner can give a lower priority to their process but not a higher one
- Only the root user is able to give higher priority to a process

#### Setting Startup Priority
- The command for nice needs an incremental number to change its priority
- it uses the name of the process when setting a priority
    - E.g. nice -n -10 /bin/adamsprocess - this decreases the nice value of the process and gives it more priority
    - E.g. nice -n 10 /bin/adamsprocess - this increases the nice value of the process and gives it less priority

#### Changing Priority
- The command for renice needs a whole number between -20 upto +19 to set a priority
- It uses the process ID (PID) to set a priority
    - E.g. - renice 15 5566 - this give the process for ID 5566 a lower priority value
    - E.g. - renice -15 5566 - this give the process for ID 5566 a higher priority value

#### Killing Processes
- A process using too many resources may behave strangely or freeze
- These are known as zombie processes
- kill - can be used to restart or stop processes
    - kill has 64 signlas that can be used - key ones are in the table below

    | Signal Name  | Number Option |   Description                  |
    |--------------|---------------|---------------------|
    |   SIGHUP     |   1           | Hangup (HUP) restarts process with same PID |
    |   SIGINT     |   2           | Interrupt (INT) weak signal that may not work               | 
    |   SIGQUIT    |   3           | Core dump terminates process but saves its info in memory to a file named core     | 
    |   SIGTERM    |   15          | Termination (TERM) default kill signal for the kill command               | 
    |   SIGKILL    |   9           | Complete kill signal - forces process to stop by sending tis resources to a special device named /dev/null     | 

- kill -1 5566 - restarts a process
- kill -9 5566 - fully stops and kills a process
- killall -9 adams process - killall can take a process name to stop it

#### Background Processes
- Sometimes opening a process in the terminal keeps the terminal locked until that process is finished
    - E.g. - vscode newscript - terminal opens vscode but cannot take any more commands until vdcode is closed
- A process can be opening in the background to leave the terminal free by adding a &
    - E.g. - vscode newscript & - terminal opens vscode but will still continue to be able to take new commands

- A process can be moved to be in the foreground - this requires the process PID
    - E.g. - fg 5566 - brings process to the foreground

#### Schedule Processes
- at - is a background process (daemon) that can schedule something to run sometime in the future
- crond - can schedule jobs to run daily, weekly or monthly
- at accepts many different time and date formats 

| Format                 | Description                    |
|------------------------|--------------------------------|
|  at 7:20pm             | run at 7:20pm on current day   |
|  at 7:20pm June 25     | Run 7:20pm on 25th June        | 
|  at noon               | Run at noon on current day     |
|  at noon June 25       | Run at noon on 25th June       |
|  at tomorrow           | run tomorrow                   |
|  at now + 20 minutes   | run 20mins from current time   |
|  at now + 10 hours     | run 10 hours from current time |
|  at now + 5 days       | run 5 days from current date   |
|  at now + 3 weeks      | run 3 weeks from current date  |
|  at 7:20pm 05/07/2026  | run at 7:20pm 5th July 2026    |

- at 5:00pm
    - at> /root/adamsscript - this will run adamsscript at 5pm today