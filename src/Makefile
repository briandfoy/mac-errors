MODULE = ../lib/Errors.pm

update:		$(MODULE).new

clean:		clean-generated
	rm -f sources.dat errors-online.dat

clean-generated:
	rm -f footer.txt header.txt errors-old.dat errors.dat errors.txt $(MODULE).new

.DELETE_ON_ERROR:

header.txt:	$(MODULE)
	sed '1,/END HEADER/p;d' $< > $@

footer.txt:	$(MODULE)
	sed '/BEGIN FOOTER/,$$p;d' $< > $@

sources.dat:
	./download-sources >> $@

errors-old.dat:	$(MODULE)
	sed '/END HEADER/,/BEGIN FOOTER/p;d' $< | ./depodify-errors > $@

errors-online.dat: sources.dat
	./download-errors $< >> $@

errors.dat: errors-exceptions.dat errors-old.dat errors-online.dat
	./combine-errors $^ > $@

errors.txt:	errors.dat
	./podify-errors errors.dat > $@

$(MODULE).new:	header.txt errors.txt footer.txt
	cat $^ > $@
