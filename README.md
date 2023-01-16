# Overview

A template file and folder structure for a data analysis project/paper done with R/Quarto/Github. 

# Pre-requisites

This is a template for a data analysis project using R, Quarto, Github and a reference manager that can handle bibtex. It is also assumed that you have a word processor installed (e.g. MS Word or [LibreOffice](https://www.libreoffice.org/)). You need that software stack to make use of this template.

# Template structure

* All data goes into the subfolders inside the `data` folder.
* All code goes into the `code` folder or subfolders.
* All results (figures, tables, computed values) go into `results` folder or subfolders.
* All products (manuscripts, supplement, presentation slides, web apps, etc.) go into `products` subfolders.
* See the various `readme.md` files in those folders for some more information.

# Template content 

The template comes with a few files that are meant as illustrative examples of the kinds of content you would place in the different folders. See the `readme` files in each folder for more details.

* There is a simple, made-up dataset in the `raw_data` folder. 
* The `processing_code` folder contains several files that load the raw data, perform a bit of cleaning, and save the result in the `processed_data` folder. 
* The `analysis_code` folder contains several files that load the processed data, do an exploratory analysis, and fit a simple model. These files produce figures and some numeric output (tables), which are saved to the `results` folder.
* The `products` folder contains an example `bibtex` and CSL style files for references. Those files are used by the example manuscript and slides.
* The  `manuscript` folder contains a template for a report written as Quarto file. If you access this repository as part of [my Modern Applied Data Science course](https://andreashandel.github.io/MADAcourse/), the sections are guides for your project. If you found your way to this repository outside the course, you might only be interested in seeing how the file pulls in results and references and generates a word document as output, without paying attention to the detailed structure. There is also a sub-folder containing an example template for a supplementary material file.
* The `slides` folder contains a basic example of slides made with Quarto. 


# Getting started

This is a Github template repository. The best way to get it and start using it is [by following these steps.](https://help.github.com/en/articles/creating-a-repository-from-a-template)

Once you got the repository, you can check out the examples by executing them in order. First run the processing code, which will produce the processed data. Then run the analysis scripts, which will take the processed data and produce some results. Then you can run the manuscript, poster and slides example files in any order. Those files pull in the generated results and display them. These files also pull in references from the `bibtex` file and format them according to the CSL style.


