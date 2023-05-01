#!/bin/bash

function makedirs() {
echo "1. create dirs in home dir"
cd ~
mkdir -p Pokemon/{jigglypuff/{wigglypuff,poliwrath},poliwag/poliwhirl}

echo "2. go to poliwrath in abs"
cd /home/user/Pokemon/jigglypuff/poliwrath

echo "3. move poliwrath to poliwag"
mv ../poliwrath ../../poliwag

echo "4. go to poliwhirl in relative"
cd ../../poliwag/poliwhirl

echo "5. back to wigglypuff in relative"
cd ../../jigglypuff/wigglypuff

echo "6. delete all POKEMON SEASONS!!! ;("
sleep 3
rm -rvf ~/Pokemon

}

function usercheck() {
read -p "enter a user name: " unames
grep -qi $unames /etc/passwd
if [[ $? -eq 0 ]]
	then
		echo "user is already exists"
	else
		echo "user doesnt exists, creating"
		sleep 3
		sudo useradd -m $unames
		echo "user $unames created successfully!"
		ls /home
fi



}
