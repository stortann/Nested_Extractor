# Nested Extractor
This little script was created in response to having to work on a lot of nested archives, without the possibility of using anything but the standard 7zip program and rights to work with .bat files. 

## Requirements
- 7zip program installed on your machine

## How to work with it
Place this extractor in a folder with a nested .zip, .7z or .tar archive/s. Be careful - it looks through every archive in a folder in which you placed it, so if you don't want to extract something unwanted, just create a new folder. Then you activate it and choose between two options (it will prompt you with the short explanation of those options each time, so no need to worry about remembering it):
- for it to go through every archive and then extract it in the folder where it's located, input y and then press Enter
- for it to go through every archive and then extract it in the folder where it's located, and then delete the original archives, input yd and then press Enter

## Plans?
Maybe I'll implement the ability to work with WinRAR, but for now it it what it is.
