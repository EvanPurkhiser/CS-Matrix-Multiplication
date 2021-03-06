experiment: experiment.c
	gcc -Wall -std=c99 -o experiment experiment.c

report.pdf: report.md
	pandoc report.md -V geometry:margin=1in -o report.pdf

all: experiment

clean:
	rm -f experiment report.pdf
