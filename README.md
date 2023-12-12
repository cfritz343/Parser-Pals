# Parser-Pals
CS4450 Parser Project

"Parser Pals" ANTLR Project 
CS 4450 Fall Semester

**Getting Started**

This program and associated instructions are written for Ubuntu systems.

**Prerequisites**<br />
To run this program, you will need Python3 and ANTLR4 installed on your machine.
You can install antlr4 with the " $ pip install antlr4-tools" command.
Running the "$antlr4" command will install Java if the requirement isn't already met.
https://github.com/antlr/antlr4/blob/master/doc/getting-started.md

**Installation:**<br />
Download the Expr.g4 file from the repository to your machine. 

**How to Use Parser:**<br />
Enter "antlr4 -Dlanguage=Python3 -visitor Expr.g4" in terminal<br />
use "antlr4-parse Expr.g4 prog -tree project_deliverable_1_testcase.py > output.txt" to output parse tree to a file<br />
exclude '> output.txt' to just print it to the terminal<br />

**Usage**<br />
The point of this project was to create a language parser for the Python coding lanuage. <br />
Our program supports arithmetic/assignment operators, if/elif/else blocks, conditional statements, while/for loops, nested structures, and comments.<br />

**License**<br />
Distributed under the MIT License. See LICENSE.txt for more information.

**Contact**<br />
Clayton Fritz - ccf29c@umsystem.edu<br />
Billy Mears - dabearsjp@gmail.com<br />
Malynda Holt - mahnkc@umsystem.edu<br />

Project Link: https://github.com/cfritz343/Parser-Pals/
