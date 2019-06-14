# useage : dis2raw.sh distincedData mapData
./ruleGen $1 > _aim_
perl -n -e "print if ! /"StringAttribute"|"Undefined"|^\d/" $2 > mine2
perl hash2raw.pl mine2 _aim_
rm _aim_ mine2
