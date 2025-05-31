
# Neovim tips

## Neovim Installation

Suggest you download the latest version of Neovim from the official site.
Once this is done .... best to go through the `kickstart.neovim` file to get
the basic setup done.

As of this writing , the video we went through and the kickstart file we used are:
- [kickstart video](https://www.youtube.com/watch?v=m8C0Cq9Uv9o)
- [kickstart repository](https://github.com/nvim-lua/kickstart.nvim.git)


## Neovim Motion and Tricks: YouTube Video

[Vim Motions & Tricks ](https://youtu.be/RdyfT2dbt78?si=ySDAAq2CZpaP8-iW)

Quit from after saving 

<ESC> Z Z 
:wq! 

Quit without saving

<ESC> Z Q
:q!


Select code inside "()"
Command mode <ESC>
vib or vi(

Select code inside "{}"
Command mode <ESC>
viB or vi{

Select code inside "[]"
Command mode <ESC>
viB or vi[

Select a section between line spaces 
Command mode <ESC>
vis

Block Editing

Select a block of text
<CTRL>-v jjjjjj/hhhh 
I
Now write some text insert to the whole block ( each line )
<ESC> this populates it
Now to go to the end of the block
Select the last highlighted text using 
gv
Goto the end of the line
$
Now append
A
Now write some text 
<ESC> this populates the whole block end parts only


Format Code in the file ( any language )
Assuming you have the LSP enabled for the language 

Goto the beginning of the file
gg
Now format the whole to the end of the file
=G
<ESC>


To save a edit session 
: mksession mysession1.vim

To recover a session
% nvim
:source mysession1.vim

Open a URL in a browser
Cursor at the beginning of the URL ( http:// ) 
gx

Open a file in neovim 
cursor at the beginning of the filename
gf

The above commands are useful if you are editing Markdown 


VIM Marks
Mark a point, here `a` is used as a variable
ma
Now edit somewhere else and come back to the point
'a
Going across the files with markers is the same 
only use Uppercase M, and variable in Uppercase 
MA
'A


To goto a line number 43
:43
or
43G

To join two lines
J

## Kungfu with Neovim

[Neovim Kungfu](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/moving-blazingly-fast-with-the-core-vim-motions/)

### Horizontal: Moving around the file

w - move to the beginning of the next word
b - move to the beginning of the previous word
e - move to the end of the current word
ge - move to the end of the previous word
0 - move to the beginning of the lines
$ - move to the end of the line
^ - move to the first non-blank character of the line

### Horizontal: Moving around WORD by WORD 

WORD is a sequence of characters grouped. e.g.
Iam_A_WORD(WORD)
sum(2,3)
[1,2,3,4,5]


W - move to the beginning of the next word
B - move to the beginning of the previous WORD
E - move to the end of the current word
gE - move to the end of the previous word

### Horizontal: Moving around by searching and looking for patterns

Let's look for a character and move to it. forward.
`f` followed by the character. if you are lookingfor `(` then
`f(`
Moving backward looking for a character 
`F` followed by the character. if you are looking for `(` then
`F(`

Same type of search but once character before the character
`t` followed by the character. if you are looking for `(` then
`t(`
Moving backward looking for a characters
`T` followed by the character. if you are looking for `(` then
`T(`

In the above cases use `;` to repeat the search in the same direction
Use `,` to repeat the search in the opposite direction

### Vertical: Moving around the file

gg - move to the beginning of the files
G - move to the end of the file
H - move to the top of the screen
M - move to the middle of the screen
L - move to the bottom of the screen
} - jumps the entire paragraph downwards 
{ - jumps the entire paragraph upwards
CTRL-D - move half a page downwards
CTRL-U - move half a page upwards

### Vertical: Moving around by searching and looking for patterns

`/` followed by the pattern you are looking format forward search
`?` followed by the pattern you are looking format backward search

e.g. `/myfunction` or `?myfunction`

`%` to jump to the matching parenthesis, bracket, or brace


## VIM Operators

Operators are used to perform actions on text objects. With a 
series of commands and VIM motion  edits can be done very fast 

General command structure is:

**{operator}{count}{motion}**

Operators : d, c, y, g~ (toggle case), gu (lowercase), gU (uppercase) > \
            (shift right), < (shift left), = (auto-indent)
Count: Number of times the operator is applied
Motion: Text object or motion to apply the operator

e.g.

d2w - delete two words
d5j - delete 5 lines downwards
df) - delete till the next closing parenthesis
dG - delete till the end of the file
d/hello - delete till the next hello

Operator Shortcuts commonly used are:
yy - yank copy the current line
dd - delete the current line
cc - change the current lines
D - delete till the end of the line
Y - yank till the end of the line
C - change till the end of the line

## VIM Text Objects at a glance

Text Objects are any structured texts like words, sentences, paragraphs, code blocks,
blocks of code, tags, etc.

Command Structure: **{operator}{a|i}{text-object-id}**

a - around text object
i - inside or inner

Text Object Ids:
w - word
s - sentence
p - paragraph
b - block
b or ( - block inside parenthesis
B or { - block inside curly braces
" - double quotes
' - single quotes
` - backticks
t - tag
< - Block surrounded by < >
[ - Block surrounded by [ ]
{ - Block surrounded by { }
) - Block surrounded by ( )

e.g.

daw - delete a word
ciw - change inside word
das - delete a sentence
ci" - change inside double quotes
dab - delete a block in ()
dat - delete a tag e.g. HTML tag
di{ - delete inside curly braces

vib - select inside block
va{ - select around block{}

### Miscellaneous VIM commands

. - repeat the last command
u - undo
x - delete character
~ - toggle case
CTRL-R - redo

