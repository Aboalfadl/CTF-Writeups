for i in {1..30}
do

	FILE=$(file Challenge)

	echo $FILE

	case "$FILE" in
		*RAR*)
			unrar x Challenge
			mv secret Challenge
			;;
		*Zoo*)
			mv Challenge Challenge.zoo
			zoo -extract Challenge.zoo
			cp secret Challenge
			;;
		*7-z*)
			7z e Challenge
			echo ddd
			cp secret Challenge
			;;
		*ARC*)
			nomarch Challenge
			cp secret Challenge
			;;
		*Zip*)
			unzip Challenge
			cp secret Challenge
			;;
		*bzip2*)
			mv Challenge.bz2 Challenge			
			bzip2 -d Challenge
			cp Challenge.out Challenge
			;;
		*tar*)
			tar xf Challenge
			cp secret Challenge
			;;
		*Cabinet*)
			cabextract Challenge
			cp secret Challenge
			;;
		*XZ*)
			mv Challenge Challenge.xz
			unxz Challenge.xz
			;;
		*KGB*)
			kgb Challenge
			mv secret Challenge
			;;
		*ARJ*)
			mv Challenge Challenge.arj
			arj e Challenge.arj
			mv secret Challenge
			;;
		*PPMD*)
			PPMd d Challenge
			mv secret Challenge
			rm secret
			;;
		*rzip*)
			mv Challenge Challenge.rz
			rzip -d Challenge.rz
			mv Challenge.rz Challenge
			;;
		*gzip*)
			mv Challenge Challenge.gz
			gzip -d Challenge.gz
			;;
	
	
	esac
	file1="secret"
	file2="secret.out"
	file3="Challenge.out"
	if [ -f "$file1" ]
	then
	rm secret
	elif [ -f "$file2" ]
	then
	rm secret.out
	elif [ -f "$file3" ]
	then
	rm Challenge.out	
	fi
	
done
