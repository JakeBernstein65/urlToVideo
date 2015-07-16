# URL To Video  
## Overview
This ruby application reads through any specified text file, takes all the URLs, and stores the outputs of the HTTPS requests inside of a directory that it creates.  

This program is setup to work with HTTPS addresses, and not HTTP addresses, but feel free to change things around to work for your specific situation.  

I used this application to read a textfile full of urls for videos I owned, to create a folder, and then download the videos to the folder for me.  

This program can be used to download anything from videos, to music, to text files. I included an example URL in urls.txt, but whatever you download, make sure that you have the legal right to do so beforehand.

## Running this program  

1. Go into your terminal and then direct yourself inside of the `urlToVideo` folder  

2. Take all of the URLs you want the output of, and add them to `urls.txt` (one per line)  

3. Inside your termianl execute the command `ruby urlToFile.rb`  

4. Dance for joy and and enjoy your content
