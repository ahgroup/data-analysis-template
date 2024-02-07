# products

The folders inside this folder should contain all the products of your project.

For a classical academic project, this will be a peer-reviewed manuscript. 
The `manuscript` folder contains a template. This template is structured as a report for a class, but you can easily adjust it.

Most manuscripts these days have supplementary material, place those into the `supplement` folder. (You can have the supplement inside the `manuscript` folder or next to it, whatever is better for your setup).

Often, you might make slides for an oral presentation, place those in the `slides` folder. 

If any figure or other file is created by running code, it should go into a subfolder inside `/results`. If something is generated manually, e.g. a diagram using biorender, place it in the appropriate `assets` folder. As needed, make new (sub)-folders.

Often you need a library of references in bibtex format, as well as a CSL style file that determines reference formatting. Those files might be used by several of the products, They should be placed into the `assets` folder.

You can add further folders. If you make a scientific poster, that should go into a `poster` folder. Or you could have a `website` folder if you plan to write a blog-post or make an interactive shiny-app for your project.  

