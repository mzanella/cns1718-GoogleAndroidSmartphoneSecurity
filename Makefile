#Author: Polonio Davide <poloniodavide@gmail.com>
#License: GPLv3

OUTPUT_NAME= GoogleAndroidSmartphoneSecurity
MAIN_FILE= main
CC= latexmk
JOB_NAME=-jobname='$(OUTPUT_NAME)'
CCFLAGS= -pdflatex='pdflatex' -pdf
SHELL := /bin/bash #Need bash not shell

all: compile

compile:
	#$(CC) -C $(JOB_NAME); 
	$(CC) $(CCFLAGS) $(JOB_NAME); \

clean:
	#git clean -Xfd
	$(CC) -C $(JOB_NAME); 
	rm "$(OUTPUT_NAME).nav"; 
	rm "$(OUTPUT_NAME).snm"; 
	rm "$(OUTPUT_NAME).vrb"; 
	if [[ -a "$(OUTPUT_NAME)" ]]; then rm -rv $(OUTPUT_NAME)/; fi;