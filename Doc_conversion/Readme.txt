Document Convertion tool
------------------------



Installation instructions
-------------------------

Installing using the tar.gz file:
	o Unpack the tar.gz and copy the files to the appropriate location.  
	o Save the tar.gz locally and note the location the file was saved to.
	o Launch terminal and change directories to the location the file was saved to.
	o Unpack the tar.gz file.  Once unpacked you will see the following:
		+ Extract_html.py
		+ Doc_conversion.py
		+ champollion11
		+ WalkMan-Chanakya-FontConverter
		+ sample_input_files
		+ sample_character_map.js	
	o Have to install the following libraries in Python
		- python-bs4
		- python-pip
		- tinycss
		- flex
	o Have to install the following package
		- nodejs-legacy		
	  For ubuntu users run the following commands in terminal.
		+ sudo apt-get install python-bs4 
		+ sudo apt-get install python-pip
		+ sudo pip install tinycss
		+ sudo apt-get install flex
		+ sudo apt-get install nodejs-legacy

	o To run the tool run the executable file Doc-conversion.py  

How to Use the tool??
-------------

When the executable file is run a window appears on the screen displayin two options:
Two options 
	o Text Extraction:
	 +Select the language.
	 +Can give input file of the following formats: ps,pdf,html.
	    If language other than english is selected:
	     +If .ps/.pdf file is given as input:
	      -User is asked to enter the character mapping script which sholud be of the extension ".js"
	      -If no file is selected the default script of mapping to Devanagiri is run.
	     + If .html file is given as input:
	      -Three options are displayed:
	       -Use font converter
		 if font converter is selected the walkman chanakya font converter present with the tool will run
		 on the input file. 
	       -Use mapping script
		 The mapping script should be of the format ".js", for example: "filename.js". 
	       -Extracted text file without converting it to the required font.
		This option is provided if the text is to be converted on the external font
		converter.				
	 +After clicking on submit button, the file name and the destination folder is asked for the output file.
		+ Text file gets created and saved.
	o Alignment :
		+ Input English and Hindi text files.
		+ Input English-hindi Dictionary file, or the default dictionary of English-Hindi is used if no
		  option is selected. 	
		+ After sentences are aligned which may take a little bit of time, the filename and destination
		  folder for the output file is asked and the output file is saved.
                + The output file is like:
		    1 <==> 2
			Which means the first line of English file is mapped to second line of Hindi file. 					   			

	o Sample input files in pdf formats and html formats are given in the sample_input_file folder.






----------------------------------- ---   
Any Queries Contact:
---------------------------------------
   Darshan Agarwal,Ravi Teja
   IIIT Hyderabad
   (darshan.agarwal@students.iiit.ac.in)
----------------------------------------




