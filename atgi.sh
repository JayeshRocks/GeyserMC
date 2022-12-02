#!/bin/sh

echo ""
echo "This script will install and run GeyserMC for Android Termux in the current directory!..."
echo "Continuing Install in 5 seconds..."
echo ""
sleep 5
echo "Installing..."
sleep 2

echo ""
echo "------------------------------------------"
echo "Updating your packages and repositories..."
echo "------------------------------------------"
echo ""

sleep 3

pkg update -y
pkg upgrade -y

echo ""
echo "------------------------"
echo "Installing OpenJDK-17..."
echo "------------------------"
echo ""

sleep 3

pkg install openjdk-17 -y

echo ""
echo "-------------------------"
echo "Downloading Geyser Jar..."
echo "-------------------------"
echo ""

test -d "GeyserMC" && echo "Found GeyserMC directory already thus updating Geyser Jar" && echo "" && sleep 3 && cd GeyserMC && rm -r *.jar && wget https://ci.opencollab.dev/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/build/libs/Geyser-Standalone.jar && echo "Script Updated Geyser Jar, access Geyser anytime by running 'cd GeyserMC && java -jar Geyser-Standalone.jar'" && exit

sleep 3

wget https://ci.opencollab.dev/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/build/libs/Geyser-Standalone.jar

echo "Script installed Geyser Jar, access Geyser anytime by running 'cd GeyserMC && java -jar Geyser-Standalone.jar'"

echo ""
echo "------------------"
echo "Starting Geyser..."
echo "------------------"
echo ""

sleep 3

java -jar Geyser-Standalone.jar
