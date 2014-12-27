Sometimes I just forgot how to properly setup Emacs in Windows.
So, here it is :
- Download it from http://ftp.gnu.org/gnu/emacs/windows/
- Extact, unzip anywhere
- Define HOME variable, let say to G:\
- Fork this repo to G:\, so it will be in G:\.emacs.d
- Create LINK in Windows using command G:\>mklink .emacs g:\.emacs.d\.emacs
- use runemacs.exe to start Emacs, change its Start in to G:\ (e.g). Pin it to Start
- Create LINK to diary file : mklink g:\diary g:\.emacs.d\diary
- DONE.

Simple, but it took me always couple of minutes to figure it out for each new Windows installation :p