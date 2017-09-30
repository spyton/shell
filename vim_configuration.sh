 #!/bin/bash
 # vim plugin install script 

 # need wget and unzip packages



wget -O bash-support.zip http://www.vim.org/scripts/download_script.php?src_id=9890

test -f ~/.vim || mkdir ~/.vim # if the directory does not exist already
unzip bash-support.zip -d ~/.vim/
rm bash-support.zip

test -f ~/.vimrc || touch ~/.vimrc
echo "filetype plugin on" >> ~/.vimrc


echo "let g:BASH_AuthorName   = 'Yang'" >> ~/.vimrc
echo "let g:BASH_Email        = 'shiyangfrance@hotmail.com'" >> ~/.vimrc
echo "let g:BASH_Company      = 'Devoteam'">> ~/.vimrc