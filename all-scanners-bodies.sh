#!/usr/bin/env sh

# small bodies get special treatment

SCANNERS="AltLo1 AltLo2 AltHi1 AltHi2 AltHi3 ResLo0 ResHi0 ResHi1 ResHi2 ResHi3 ResHi4 Multi1 Multi2 Multi3 VisHi1 VisHi2 VisHi3"

#rm -rf planets
#mkdir planets

for p in "Gilly" "Minmus" "Dres"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s    -r Low -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done

# big bodies get special treatment (Kerbol is incompat. with SCANsat)

for p in "Jool"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Very -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done


# all the normies go here
for p in "Moho" "Eve" "Kerbin" "Mun" "Duna" "Ike" "Laythe" "Vall" "Tylo" "Bop"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Hi -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done


# Pol is super-special; if you don't allow it to consider huge
#	sidelap then it won't find anything

for p in "Pol"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Very -pp -smin 1.00 -smax 3.00 -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done

# RSS Bodies Go Here (-q overrides the VeryHi default setting)
for p in "Earth" "Moon"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Very -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done


for p in "Eeloo"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Low -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done

