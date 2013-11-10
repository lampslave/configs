# For complete documentation of this file, please see Geany's main documentation
[styling]
# foreground;background;bold;italic
html_default=0x000000;0xffffff;false;false
html_tag=0x0000e6;0xffffff;false;false
html_tagunknown=0xff0000;0xffffff;false;false
html_attribute=0x009900;0xffffff;false;false
html_attributeunknown=0xff0000;0xffffff;false;false
html_number=0x800080;0xffffff;false;false
html_doublestring=0xce7b00;0xffffff;false;false
html_singlestring=0xce7b00;0xffffff;false;false
html_other=0x009900;0xffffff;false;false
html_comment=0x969696;0xffffff;false;false
html_entity=0x000000;0xffffff;true;false
html_tagend=0x0000e6;0xffffff;false;false
# <?
html_xmlstart=0x0000e6;0xf0f0f0;false;false
# ?>
html_xmlend=0x0000e6;0xf0f0f0;false;false
# <script
html_script=0x000080;0xf0f0f0;false;false
# <% ... %>
html_asp=0x004f4f;0xf0f0f0;false;false
# <%@ ... %>
html_aspat=0x004f4f;0xf0f0f0;false;false
html_cdata=0x660099;0xffffff;false;false
html_question=0x000000;0xffffff;true;false
html_value=0x660099;0xffffff;false;false
html_xccomment=0x660099;0xffffff;false;false

sgml_default=0x000000;0xffffff;false;false
sgml_comment=0x808080;0xffffff;false;false
sgml_special=0x007f00;0xffffff;false;false
sgml_command=0x111199;0xffffff;true;false
sgml_doublestring=0xce7b00;0xffffff;false;false
sgml_simplestring=0xce7b00;0xffffff;false;false
sgml_1st_param=0x404080;0xffffff;false;false
sgml_entity=0x301010;0xffffff;false;false
sgml_block_default=0x000000;0xffffff;false;false
sgml_1st_param_comment=0x406090;0xffffff;false;false
sgml_error=0xff0000;0xffffff;false;false

php_default=0x000000;0xffffff;false;false
php_simplestring=0xce7b00;0xffffff;false;false
php_hstring=0xce7b00;0xffffff;false;false
php_number=0xff00ff;0xffffff;false;false
php_word=0x0000e6;0xffffff;false;false
php_variable=0x6d3206;0xffffff;false;false
php_comment=0x969696;0xffffff;false;false
php_commentline=0x969696;0xffffff;false;false
php_operator=0x000000;0xffffff;false;false
php_hstring_variable=0x6d3206;0xffffff;false;false
php_complex_variable=0x6d3206;0xffffff;false;false

# used for JavaScript, ASP Javascript, VBScript
jscript_start=0x008080;0xffffff;false;false
jscript_default=0x000000;0xffffff;false;false
jscript_comment=0x969696;0xffffff;false;false
jscript_commentline=0x969696;0xffffff;false;false
jscript_commentdoc=0x969696;0xffffff;true;false
jscript_number=0x007f00;0xffffff;false;false
jscript_word=0x000000;0xffffff;false;false
jscript_keyword=0x0000e6;0xffffff;false;false
jscript_doublestring=0xce7b00;0xffffff;false;false
jscript_singlestring=0xce7b00;0xffffff;false;false
# same as operators
jscript_symbols=0x000000;0xffffff;false;false
jscript_stringeol=0x000000;0xe0c0e0;false;false

# for embedded Python script (<script language="python">...</script>), Python styles from
# filetypes.python are used

[keywords]
html=a abbr acronym address applet area b base basefont bdo big blockquote body br button caption center cite code col colgroup dd del dfn dir div dl dt em embed fieldset font form frame frameset h1 h2 h3 h4 h5 h6 head hr html i iframe img input ins isindex kbd label legend li link map menu meta noframes noscript object ol optgroup option p param pre q quality s samp script select small span strike strong style sub sup table tbody td textarea tfoot th thead title tr tt u ul var xmlns leftmargin topmargin abbr accept-charset accept accesskey action align alink alt archive axis background bgcolor border cellpadding cellspacing char charoff charset checked cite class classid clear codebase codetype color cols colspan compact content coords data datafld dataformatas datapagesize datasrc datetime declare defer dir disabled enctype face for frame frameborder selected headers height href hreflang hspace http-equiv id ismap label lang language link longdesc marginwidth marginheight maxlength media framespacing method multiple name nohref noresize noshade nowrap object onblur onchange onclick ondblclick onfocus onkeydown onkeypress onkeyup onload onmousedown onmousemove onmouseover onmouseout onmouseup onreset onselect onsubmit onunload profile prompt pluginspage readonly rel rev rows rowspan rules scheme scope scrolling shape size span src standby start style summary tabindex target text title type usemap valign value valuetype version vlink vspace width text password checkbox radio submit reset file hidden image public doctype xml xml:lang article aside audio canvas command details datalist figure figcaption footer header hgroup keygen mark meter nav output progress section time video wbr async autocomplete autofocus contenteditable contextmenu draggable formaction formenctype formnovalidate formtarget list manifest max min novalidate pattern ping placeholder required reversed role sandbox scoped seamless sizes spellcheck srcdoc step ^data- ^aria-
javascript=abs abstract acos anchor asin atan atan2 big bold boolean break byte case catch ceil char charAt charCodeAt class concat const continue cos Date debugger default delete do double else enum escape eval exp export extends false final finally fixed float floor fontcolor fontsize for fromCharCode function goto if implements import in indexOf Infinity instanceof int interface isFinite isNaN italics join lastIndexOf length link log long Math max MAX_VALUE min MIN_VALUE NaN native NEGATIVE_INFINITY new null Number package parseFloat parseInt pop POSITIVE_INFINITY pow private protected public push random return reverse round shift short sin slice small sort splice split sqrt static strike string String sub substr substring sup super switch synchronized tan this throw throws toLowerCase toString toUpperCase transient true try typeof undefined unescape unshift valueOf var void volatile while with
vbscript=and as boolean byref byte byval call case class const continue currency date dim do double each else elseif empty end error exit false for function get global goto if in integer long loop me new next not nothing object on optional or private property public put redim rem resume select set single string sub then to true type until variant wend while with
python=and assert break class continue complex def del elif else except exec finally for from global if import in inherit is int lambda not or pass print raise return tuple try unicode while yield long float str list
php=abstract and array as bool boolean break case catch cfunction __class__ class clone const continue declare default die __dir__ directory do double echo else elseif empty enddeclare endfor endforeach endif endswitch endwhile eval exception exit extends false __file__ final float for foreach __function__ function goto global if implements include include_once instanceof int integer interface isset __line__ list __method__ namespace __namespace__ new null object old_function or parent php_user_filter print private protected public real require require_once resource return __sleep static stdclass string switch this throw true try unset use var __wakeup while xor insteadof trait
sgml=ELEMENT DOCTYPE ATTLIST ENTITY NOTATION


[lexer_properties]
phpscript.mode=1

[settings]
# default extension used when saving files
extension=php

# the following characters are these which a "word" can contains, see documentation
#wordchars=_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

# these comments are used for PHP, the comments used in HTML are in filetypes.xml
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

# if this setting is set to true, a new line after a line ending with an
# unclosed tag will be automatically indented
xml_indent_tags=true

[indentation]
#width=4
# 0 is spaces, 1 is tabs, 2 is tab & spaces
#type=1

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)
compiler=php -l "%f"
run_cmd=php "%f"

# use can also use something like this, to view your PHP or HTML files through a browser and webserver
#run_cmd=firefox http://localhost/test_site/%f
