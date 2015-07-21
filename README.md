# URL To Video  
## Overview
This ruby application reads through any text file inside of the `urls` folder, takes all the URLs, and stores the outputs of the HTTPS requests inside of a directory that it creates. The Directory name is set to the first line in a text file, and the video name is set to the second line in the text file, but subsequently numbered (i.e. action1, action2, ...)  

If two of your text files contain parts of the same video series, place them one after the other and the code will continue the video naming where it left off. The code recognizes if the previous text file had the same `videoName` as the current file, and knows if it should contiue incrementing the video names or start over.

This program is setup to work with HTTPS addresses, and not HTTP addresses, but feel free to change things around to work for your specific situation.  

I used this application to read multiple textfiles full of urls for videos I owned, and to create a folder, and download the videos to the folder.  

This program can be used to download anything from videos, to music, to text files. I included example URLs in the urls folder inside of urls.txt, urls2.txt, and urls3.txt to demonstrate how the program should work.  

Whatever you download, make sure that you have the legal right to do so beforehand.

## Running this program  

1. Go into your terminal and then direct yourself inside of the `urlToVideo` folder  

2. Take all of the URLs you want the output of, and add them to `urls.txt` (one per line)  

3. Inside your termianl execute the command `ruby urlToFile.rb`  

4. Enjoy your content
