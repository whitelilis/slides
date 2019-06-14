all:classic.1 roughbasic.1 diff.1 decision.1

%.1:%.mp
	mpost $^
clean:
	find . -maxdepth 1 -type f -not -name '*.mp' -and -not -name 'makefile' | xargs rm
