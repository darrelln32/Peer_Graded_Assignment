all: README.md

README.md:
	echo '## UNIX Workbench: Peer-Graded Assignment' > README.md
	printf '\n\n' >> README.md
	echo '- Date: $(shell date)' >> README.md
	printf '\n\n' >> README.md
	echo '- Number of lines of code of guessing game.sh: $(shell cat guessinggame.sh | wc -l)' >> README.md
         
