# processing-code

This folder contains code for processing data.

It currently contains 3 example files, showing the same processing steps done using slightly different setup with R and Quarto.

* First, there is an R script that you can run which does all the cleaning.
* Second, there is a Quarto file which contains exactly the same code as the R script, with some comments. Everything lives inside the Quarto file.
* Third, my current favorite, is a Quarto file with an approach where the code is pulled in from the R script and run.

The last version has the advantage of having code in one place for easy writing/debugging, and then being able to pull the code into the Quarto file for a nice combination of text/commentary and code.

Each way of doing this is a reasonable approach, pick whichever one you prefer or makes the most sense for your setup. You can also mix and match. For instance for an EDA task, it might make sense to produce a Quarto file. Then I would use the 2nd or 3rd approach. If you do a main analysis, then you might just want to have an R script that does the data analysis and saves the results to a file, for later use/processing. You might not need or want a quarto file for that.

Whichever approach you choose, add ample documentation/commentary so you and others can easily understand what's going on and what is done.