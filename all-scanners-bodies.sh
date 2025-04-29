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
#holeblacK
for p in "Ahtpan" "Anehta" "Anneleg" "Arorua" "Dipuc" "Efil" "Elad" "Enots" "Eulb" "Mehtna" "Meiuquer" "Noi" "Noira" "Norihc" "Noyreg" "Sedah" "Sera" "Suluco" "Tot" "Uleg" "Iomena" "Onrefni" "Rouqea"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Low -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done
# Quackpack
for p in "Blas" "Cind" "Geet" "Jot" "Subon"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Low -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done
# OPM
for p in "Hale" "Karen" "Neidon" "Nissee" "Ovok" "Plock" "Polta" "Priax" "Thatmo" "Slate" "Sarnus" "Tekto" "Urlum" "Tal" "Wal"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Low -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done

# MPE
for p in "Archae" "Crokslev" "Edas" "Ervo" "Flake" "Geito" "Havous" "Kal" "Ki;Ki" "LintMikey" "Lon" "Mracksis" "Soden" "Vant" "Zore"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Low -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done




# OWR
for p in "C2-1" "C3-1" "C4-1" "C4-2" "Crons" "Disole" "Kevari" "Nienna" "Niko" "Pequar" "Prima" "Secunda" "Troni" "Vassa"
do
	echo "on $p"
	for s in $SCANNERS; do
		./MapSatAltitude.sh -p $p -s $s -r Low -pp -q -os forum >> $p.txt
	done
	mv $p_*.png planets
	mv $p.txt planets
done