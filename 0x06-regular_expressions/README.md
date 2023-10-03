# 0x06 Regular Expressions

This repository contains Ruby scripts that use regular expressions to perform specific tasks. Each script accepts one argument and passes it to a regular expression matching method. Below are the details of each script along with their requirements and examples.

## 0-simply_match_school.rb

**Requirements:**
- The regular expression must match "School."
- Create a Ruby script that accepts one argument and passes it to a regular expression matching method.

**Example:**
```bash
sylvain@ubuntu$ ./0-simply_match_school.rb School | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "Best School" | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "School Best School" | cat -e
SchoolSchool$
sylvain@ubuntu$ ./0-simply_match_school.rb "Grace Hopper" | cat -e
$
1-repetition_token_0.rb
Requirements:

Find the regular expression that will match specific cases.
Create a Ruby script that accepts one argument and passes it to a regular expression matching method.
2-repetition_token_1.rb
Requirements:

Find the regular expression that will match specific cases.
Create a Ruby script that accepts one argument and passes it to a regular expression matching method.
3-repetition_token_2.rb
Requirements:

Find the regular expression that will match specific cases.
Create a Ruby script that accepts one argument and passes it to a regular expression matching method.
4-repetition_token_3.rb
Requirements:

Find the regular expression that will match specific cases.
Create a Ruby script that accepts one argument and passes it to a regular expression matching method.
Your regex should not contain square brackets.
5-beginning_and_end.rb
Requirements:

The regular expression must exactly match a string that starts with "h," ends with "n," and can have any single character in between.
Create a Ruby script that accepts one argument and passes it to a regular expression matching method.
Example:

sylvain@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
hbn$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'h8n' | cat -e
h8n$
6-phone_number.rb
Requirements:

The regular expression must match a 10-digit phone number.
Create a Ruby script that accepts one argument and passes it to a regular expression matching method.
Example:

sylvain@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e
4155049898$
sylvain@ubuntu$ ./6-phone_number.rb " 4155049898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415 504 9898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415-504-9898" | cat -e
$
7-OMG_WHY_ARE_YOU_SHOUTING.rb
Requirements:

The regular expression must only match capital letters.
Example:

sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream" | cat -e
ILOVESYSADMIN$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?" | cat -e
WHATSAY$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you" | cat -e
$
100-textme.rb
Advanced Task:

Your script should output: [SENDER],[RECEIVER],[FLAGS]
The sender phone number or name (including country code if present).
The receiver phone number or name (including country code if present).
The flags that were used.
You can find a [log file here].
Example:

$ ./100-textme.rb 
