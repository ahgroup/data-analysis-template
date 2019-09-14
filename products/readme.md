The folders inside this folder should contain all the products of your project.

For a classical academic project, this will be a peer-reviewed manuscript. 
The `manuscript` folder contains a template. This template is structured as a report for a class, but you can easily adjust it.

Most manuscripts these days have supplementary material, place those into the `supplement` folder. (I find this structure easier than moving it inside the manuscript folder, but that's personal choice).

Often, you might make slides for an oral presentation, place those in the `slides` folder. 

If you make a scientific poster, that should go into the `poster` folder. There are a number of R packages that allow you to make a poster in RMarkdown, see [e.g. this list.
](https://gist.github.com/Pakillo/4854e5d760351206084f6be8abe476b2)

You can add further folders. For instance you could have a `website` folder if you plan to write a blog-post or make an interactive shiny-app for your project.  

Often you need a library of references in bibtex format, as well as a CSL style file that determines reference formatting. Since those files might be used by several of the products, I'm placing them in the main products folder. Feel free to re-organize.