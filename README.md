
# Advent of Code 2025
*In PostScript!*

By Anders Piniesjö.

This is an attempt to solve the [Advent of Code for 2025](https://adventofcode.com/2025) 
in PostScript.

## Why
About 27 years or so ago I wrote [PS-HTTPD](https://www.pugo.org/projects/pshttpd), 
a web server in PostScript.
Ten years after that I made PostScript based printer drivers 
for the Opera Web browser. During the years since then, 
I have forgotten most of that quite funky language.
It was time to bring the memories back to life!

## Goal
The goal is that each day's task should be executable on a
PostScript printer. No non standard extensions will be used.
It is possible that some tasks will be very demanding for a
normal printer (e.g. day 8 step 2), but it should still be
possible to print.

During development and for reasonable execution I use
the fantastic Ghostscript. The Ghostscript developers have
provided us a free PostScript intepreter since 1988!

## Running
The data input files (`input.txt`) are personal and not included
in this repository. To run a task, place your own `input.txt` in
respective directory and run `make run`.

## What is Postscript?
[PostScript (PS)](https://en.wikipedia.org/wiki/PostScript) is a Turing complete page description language
invented by Adobe. It was introduced in 1982. The most recent
version, PostScript 3, was released 1997.

The successor of PostScript is PDF.

## Possible?
Doing Advent of Code in PostScript should be possible. This far
I have done day 1 to 9. Maybe some of the coming tasks
will hit the limits of PostScript, but this far it works!

## Results
I managed to finish day 1 to day 10 step 1.

*Day 10 part 2 exceeds what is practical in PostScript due to the 
need for integer Gaussian elimination and constrained search.*

It would be very demanding to implement this in PostScript since
it lacks several needed language features. Also recursion is
painful in PostScript due to the fact that it lacks local
scopes and clojures. The latter can be emulated by juggling dicts
for the dictionary stack, but it is a painful way. The main
blocker is that it is painfully slow when it comes to heavy
computation. 

Finally it showed that PostScript is an interpreted page description 
language from the 80:s. **But!** It has been a great journey!

<img src="utils/ps-logo.png" width="200px"/>
