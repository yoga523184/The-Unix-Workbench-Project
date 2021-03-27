README.md: guessinggame.sh
	echo "# The-Unix-Workbench-Project" > $@
	echo '`make` was run at' `date`. >> $@
	echo '`$^`' "has" `cat $^ | wc -l` "lines." >> $@

clean:
	rm -f README.md
