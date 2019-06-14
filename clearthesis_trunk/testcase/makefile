test: ctr.lst

%.lst:%.dic
	./utils/rosetta_dic_attr.sh $< > _att
	./utils/rosetta_dic_data.sh $< > _rawdata
	./utils/rosetta_dic_head.pl _att > _head
	cat _head _rawdata > _data
	sed -i -e 's/\r//' _data
	./rs _data
	./utils/rosetta_dic_map.sh $< > _map
	perl -n -e "print if ! /".*Attribute"|"Undefined"|^\d/" _map > _clear_map
	./utils/hash2raw.pl _clear_map _data.rst > $@
clean:
	-rm _*
