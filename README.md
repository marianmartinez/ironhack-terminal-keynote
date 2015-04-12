# Terminal keynote

### DAY 3 Final Exercise for the [Ironhack Bootcamp](http://www.ironhack.com/)
More exercises in the main repository: [ironhack-april-2015](https://github.com/marianmartinez/ironhack-april-2015)

Apple is presenting its new iTerminal. Of course millions of people will line up in front of apple stores to buy it and they need a new powerful presentation to impress the media.

We are building the text file keynote.

We will build a presentation in a text file as follows. All texts should be one line long and we can assume that they will not be longer than the width of the screen.

```
Prepare for the next big thing
----
The iTerminal
----
Is here

```
This should do something like showing a screen in the terminal like

```






            Prepare for the next big thing




>
``` 
So the text will be centered in the terminal, horizontally and vertically.

Down below you need to show a prompt that can use the following commands:

* next: For the next slide
* previous: For the previous one

You can use [ruby-terminfo](https://github.com/genki/ruby-terminfo) to get the size of the terminal.

```
require 'terminfo'
p TermInfo.screen_size
```
That snippet returns an array with the current height and width of the screen.

As alternative for Windows users you can use highlight gem:

```
require 'highline'
HighLine::SystemExtensions.terminal_size # [columns, lines]

```
