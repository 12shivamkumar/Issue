#!/bin/sh
ret=0
sudo apt-get install libmysql-diff-perl
sudo /etc/init.d/mysql start

declare -a value
value=$2

declare -A changed_files

for i in $1
do
   touch previous.sql
   git show $value~:$i > previous.sql
   touch change.sql
   mysql-schema-diff --user=root --password=root previous.sql $i > change.sql
   drop_count="$(grep -c "DROP" change.sql)"

   if [[ $drop_count>0 ]]
   then
     key=$(echo $i | cut -d'/' -f 2-)
     changed_files["${key}"]=$i
   fi
done

if [[ ${#changed_files[@]} -gt 0  ]]; then
  ret=1
fi
if [[ $ret==1 ]]; then
  echo "These were the sql files where u have DROP some column from Schema"
  echo ${changed_files[@]}
fi

exit $ret