!# /bin/sh



for i in *.wav; do
	touch $i.opts;
	sox $i -t raw -f -4 -r 44100 - | ../midimatch -i stdin -vv -o $i.midi 2> $i.log
done;