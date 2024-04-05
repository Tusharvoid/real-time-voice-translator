#!/bin/bash

# Update package list
sudo apt-get update

# Install pip if not already installed
if ! command -v pip3 &> /dev/null
then
    echo "pip3 could not be found, installing..."
    sudo apt-get install python3-pip -y
fi

# Install portaudio19-dev for pyaudio
sudo apt-get install portaudio19-dev -y

# Install Python packages
pip3 install gTTS
pip3 install SpeechRecognition
pip3 install playsound==1.2.2
pip3 install deep_translator
pip3 install --upgrade google-cloud-translate
pip3 install --upgrade google-api-python-client
pip3 install google-transliteration-api
pip3 install pyaudio
echo "	ALL MODULE INSTALLED PROPERLY "
python3 main.py

