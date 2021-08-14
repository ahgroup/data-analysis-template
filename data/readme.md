The folders inside this folder should contain all data at various stages.

You should place the raw data in the raw_data folder and do not edit it. Ever!

Ideally, load the raw data into R and do all changes there with code, so everything is automatically reproducible and documented.

Sometimes, you need to edit the files in the format you got. For instance, Excel files are sometimes so poorly formatted that it's close to impossible to read them into R, or the persons you got the data from used color to code some information, which of course won't import into R. In those cases, you might have to make modifications in a software other than R. 

If you need to make edits in whatever format you got the data (e.g. Excel), make a copy and place those copies in a separate folder, AND ONLY EDIT THOSE COPIES. 

Also, write down somewhere the edits you made. 

Add as many sub-folders as suitable. If you only have a single processing step, one sub-folder for processed data is enough. If you have multiple stages of cleaning and processing, additional sub-folders might be useful. Adjust based on the complexity of your project.

I suggest you save your processed and cleaned data as RDS or RDA/Rdata files. This preserves coding like factors, characters, numeric, etc. If you save as CSV, that information would get lost.

See here for some suggestions on how to store your processed data:

http://www.sthda.com/english/wiki/saving-data-into-r-data-format-rds-and-rdata