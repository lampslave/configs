# For complete documentation of this file, please see Geany's main documentation
[styling]
# foreground;background;bold;italic
default=0x000000;0xffffff;false;false
comment=0x969696;0xffffff;false;false
commentline=0x969696;0xffffff;false;false
commentdoc=0x969696;0xffffff;false;false
number=0x000000;0xffffff;false;false
word=0x0000e6;0xffffff;false;false
word2=0x000000;0xffffff;false;false
string=0xce7b00;0xffffff;false;false
character=0xce7b00;0xffffff;false;false
uuid=0x404080;0xffffff;false;false
preprocessor=0x007F7F;0xffffff;false;false
operator=0x301010;0xffffff;false;false
identifier=0x000000;0xffffff;false;false
stringeol=0x000000;0xe0c0e0;false;false
verbatim=0x101030;0xffffff;false;false
regex=0x9933cc;0xffffff;false;false
commentlinedoc=0x3f5fbf;0xffffff;true;false
commentdockeyword=0x3f5fbf;0xffffff;true;true
commentdockeyworderror=0x3f5fbf;0xffffff;false;false
globalclass=0x0000d0;0xffffff;true;false

[keywords]
# all items must be in one line
primary=break case catch const continue default delete do each else false finally for function get if in Infinity instanceof let NaN new null return set switch this throw true try typeof undefined var void while with yield prototype
secondary=Array Boolean Date Function Math Number Object String RegExp EvalError Error RangeError ReferenceError SyntaxError TypeError URIError prototype decodeURI decodeURIComponent encodeURI encodeURIComponent eval isFinite isNaN parseFloat parseInt

[settings]
# default extension used when saving files
extension=js

# the following characters are these which a "word" can contains, see documentation
#wordchars=_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

# single comments, like # in this file
comment_single=//
# multiline comments
comment_open=/*
comment_close=*/

# set to false if a comment character/string should start at column 0 of a line, true uses any
# indentation of the line, e.g. setting to true causes the following on pressing CTRL+d
	#command_example();
# setting to false would generate this
#	command_example();
# This setting works only for single line comments
comment_use_indent=true

# context action command (please see Geany's main documentation for details)
context_action_cmd=

[indentation]
#width=4
# 0 is spaces, 1 is tabs, 2 is tab & spaces
#type=1

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)
compiler=
run=


