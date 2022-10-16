#!/bin/sh

echo "Script v.0.1"
echo "This script will install and run GeyserMC for Android Termux..."
echo "Continuing Install in 5 seconds..."
sleep 5
echo "Installing..."

mkdir GeyserMC
cd GeyserMC

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
echo "Downloading Geyser.jar..."
echo "-------------------------"
echo ""

sleep 3

wget https://ci.opencollab.dev/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/build/libs/Geyser-Standalone.jar

echo "Script was successfull, access Geyser anytime by running 'cd GeyserMC and then java -jar Geyser.jar'"

echo ""
echo "------------------"
echo "Starting Geyser..."
echo "------------------"
echo ""

sleep 3

java -jar Geyser-Standalone.jar
