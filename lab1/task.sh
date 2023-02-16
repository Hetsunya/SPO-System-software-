#!/bin/bash
echo "--------------------------Переменные оболочки--------------------------"
for n in $@;
	do
		stat $n
done
#basename $n
		#date -r $n;
echo "--------------------------gawk--------------------------"
gawk -F stat $1  

gawk 'BEGIN  {
    format = PROCINFO["strftime"]
    exitval = 0

    if (ARGC > 2)
        exitval = 1
    else if (ARGC == 2) {
        format = ARGV[1]
        if (format ~ /^\+/)
            format = substr(format, 2)   # remove leading +
    }
    print strftime(format)
    exit exitval
}' "$@"

echo "--------------------------Командная подстановка--------------------------"
