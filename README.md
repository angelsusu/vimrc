## Installation:
`git clone https://github.com/gaoqiankun/vimrc.git && cd vimrc && bash init.sh`


## Dependencies:
1. Clang-format3.4 or higher (vim-clang-format)
2. vim7.3 build with python enabled(youcompleteme)

## Key Maps:

###Basic
|key                             | description                                 |
|--------------------------------|---------------------------------------------|
|;                               | leader                                      |
|rl                              | reload vimrc(after you edit configs)        |
|lg                              | move cursor to line head                    |
|le                              | move cursor to line end                     |
|&lt;leader&gt;&lt;leader&gt;c   | edit vimrc                                  |
|&lt;leader&gt;&lt;leader&gt;s   | eidt settings                               |
|&lt;leader&gt;&lt;leader&gt;k   | edit keymaps                                |
|&lt;leader&gt;&lt;leader&gt;m   | edit plugin management                      |
|&lt;leader&gt;&lt;leader&gt;p   | edit plugin settings                        |
|&lt;leader&gt;k                 | show all keymaps info                       |
|&lt;ctrl&gt;h                   | move to the left split window               |
|&lt;ctrl&gt;j                   | move to the bottom split window             |
|&lt;ctrl&gt;k                   | move to the top split window                |
|&lt;ctrl&gt;l                   | move to the right split window              |
|&lt;leader&gt;f                 | toggle folding                              |
|&lt;leader&gt;q                 | quit current split window                   |
|&lt;leader&gt;w                 | save current buffer                         |
|&lt;leader&gt;wq                | save current buffer and quit split window   |
|&lt;leader&gt;y                 | copy to system clipboard                    |
|&lt;leader&gt;p                 | paste from system clipboard                 |



###Plugins
|key                             | description                                 |
|--------------------------------|---------------------------------------------|
|wm                              | toggle winmanager(nerdtree file list)       |
|tl                              | toggle taglist                              |
|&lt;leader&gt;ff                | search file  in project                     |
|&lt;leader&gt;fa                | search keyword in project(show split window)|
|&lt;leader&gt;fq                | search keyword in project(show quickfix)    |
|&lt;leader&gt;cd                | toggle c++'s header file and cc file        |
|&lt;leader&gt;dx                | doc block style comment                     |
|&lt;leader&gt;tm                | toggle minbuff explorer                     |
|&lt;leader&gt;tt                | move one buffer backward                    |
|&lt;leader&gt;ft                | move one buffer forward                     |
|&lt;leader&gt;dt                | delete current buffer                       |
|&lt;leader&gt;ig                | toggle indent guide                         |
|&lt;leader&gt;ie                | enable indent guide                         |
|&lt;leader&gt;id                | disable indent guide                        |
|&lt;leader&gt;tc                | toggle clang-format                         |
|&lt;leader&gt;cf                | formating c/c++ code by hand                |
|&lt;leader&gt;td                | go to definition (not woring from now)      |
|&lt;leader&gt;tr                | go back to keyword from defition(not woring)|
|&lt;leader&gt;tg                | toggle git gutter                           |
|&lt;leader&gt;]g                | jump to git gutter's next hunk              |
|&lt;leader&gt;[g                | jump to git gutter's prev hunk              |

## Clang format
remove  *AlignConsecutiveAssignments* option if your clang-format version less than 3.9 (latest)

## Theme
remove or comment solarized configs if you don't need solarized theme





