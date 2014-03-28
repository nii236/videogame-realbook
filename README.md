The Videogame Realbook
==================
This project aims to create a jazz fakebook comprising of only videogame tunes. For some reason this hasn't been attempted very often so I decided to start this project myself in an attempt to learn some basic scripting, Lilypond, LaTeX and actually use the book for performances along the way.

The majority of tunes are transcribed from the handwritten sheets on [The Videogame Realbook](http://thevideogamerealbook.tumblr.com/) website. I have finished converting these to Lilypond (with a HUGE amount of errors which will need to be fixed later). I have just found a similar website called [A Leadsheet a Day](http://aleadsheetaday.tumblr.com) which I will go through and do the same thing. After all this I will look towards transcribing my own tunes from songs from games I were fond of back when I was young.

Everyone seems to upload their leadsheets in PNG or PDF format which is very annoying but I suppose I can't complain as the majority of the work (the actual ear transcription) has already been done.

Songbook compilation instructions are located [here](http://jboor.net/brdm/?p=172). I'm not a crash hot programmer so it'll basically be compiling each .ly file into PDF then inserting into a .tex file.

TODO
====
+ Music
  + Transcribe the rest of the pieces on The Videogame Realbook website
    + Also correct the existing transcriptions. There are A LOT of errors.
  + Find other sources of videogame music on other websites
  + Transcribe my own tunes by ear
    + Make a list of games that I'll need to pull out of the internet and put on a SNES emulator
+ Project/Scripting
  + Script a makefile that will compile all .ly files and then inserts the PDFs into LaTeX
  + Make the actual Lilypond template which can  insert melody and harmonies into
    + Edit .ly files so that the consist only of the melody and harmony changes (the rest will be in the template)
  + Work out a way to accept song requests and contributions
  + Start collecting game screen shots, cover art, etc to place at the end of each lead sheet
+ Make a nice coverpage


Changelog
=========

28 March 2014 - Finally finished transcribing stuff from The Videogame Realbook Tumblr.
27 March 2014 - First revision
