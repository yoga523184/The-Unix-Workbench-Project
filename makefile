README.md: guessinggame.sh
	echo -n "#" > $@
	basename "`pwd`" >> $@
	echo "README.md is made at" `date` >> $@
	echo $^ "has" `cat $^ | wc -l` "lines" >> $@

clean:
	rm -f README.md
