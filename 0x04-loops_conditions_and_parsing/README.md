DevOps Project Readme
This repository contains a set of Bash scripts for various tasks related to loops, conditions, and parsing. Each script is designed to fulfill a specific requirement and demonstrates the usage of different loop constructs, conditionals, and parsing techniques. Below you will find a description of each script along with the instructions to run them.

Table of Contents
0. Create a SSH RSA key pair
1. For Best School loop
2. While Best School loop
3. Until Best School loop
4. If 9, say Hi!
5. 4 bad luck, 8 is your chance
6. Superstitious numbers
7. Clock
8. For ls
9. To file, or not to file
10. FizzBuzz
0. Create a SSH RSA key pair
This script guides you in generating an RSA key pair for SSH authentication. The generated public key needs to be shared in the file 0-RSA_public_key.pub, and the private key should be stored securely for future SSH connections. Remember to also fill in the SSH public key field of your intranet profile with the generated public key.

Repo File: 0-RSA_public_key.pub

1. For Best School loop
This Bash script uses a for loop to display the phrase "Best School" ten times.

Usage:
$ ./1-for_best_school
Repo File: 1-for_best_school

2. While Best School loop
This Bash script uses a while loop to display the phrase "Best School" ten times.

Usage:
$ ./2-while_best_school
Repo File: 2-while_best_school

3. Until Best School loop
This Bash script uses an until loop to display the phrase "Best School" ten times.

Usage:
$ ./3-until_best_school
Repo File: 3-until_best_school

4. If 9, say Hi!
This Bash script uses a while loop and an if statement to display the phrase "Best School" ten times, but on the ninth iteration, it displays "Best School" and then "Hi" on a new line.

Usage:
$ ./4-if_9_say_hi
Repo File: 4-if_9_say_hi
5. 4 bad luck, 8 is your chance
This Bash script uses a while loop and if, elif, and else statements to loop from 1 to 10 and display "bad luck" for the fourth iteration, "good luck" for the eighth iteration, and "Best School" for the other iterations.

Usage:
$ ./5-4_bad_luck_8_is_your_chance
Repo File: 5-4_bad_luck_8_is_your_chance
#!/usr/bin/env bash
# This script displays "bad luck" for the 4th iteration, "good luck" for the 8th iteration,
# and "Best School" for the other iterations
6. Superstitious numbers
This Bash script displays numbers from 1 to 20 and uses a case statement to display specific messages for the 4th, 9th, and 17th loop iterations.

Usage:
$ ./6-superstitious_numbers
Repo File: 6-superstitious_numbers
#!/usr/bin/env bash
# This script displays numbers from 1 to 20 and shows specific messages for the 4th, 9th, and 17th iterations
7. Clock
This Bash script displays the time for 12 hours and 59 minutes using a while loop. It displays the hours from 0 to 12 and the minutes from 1 to 59.

Usage:
$ ./7-clock
Repo File: 7-clock
#!/usr/bin/env bash
# This script displays the time for 12 hours and 59 minutes
8. For ls
This Bash script displays the content of the current directory in a list format. It only displays the part of the filename after the first dash.

Usage:
$ ./8-for_ls
Repo File: 8-for_ls
#!/usr/bin/env bash
# This script displays the content of the current directory in a list format,
# showing only the part of the name after the first dash
9. To file, or not to file
This Bash script checks if a file named "school" exists. If it exists, it provides information about the file such as whether it is empty or a regular file.

Usage:
$ ./9-to_file_or_not_to_file
Repo File: 9-to_file_or_not_to_file
#!/usr/bin/env bash
# This script checks if the file "school" exists and provides information about it
10. FizzBuzz
This Bash script displays numbers from 1 to 100. For multiples of 3, it displays "Fizz." For multiples of 5, it displays "Buzz." For numbers that are multiples of both 3 and 5, it displays "FizzBuzz."

Usage:
$ ./10-fizzbuzz

Repo File: 10-fizzbuzz
#endif
