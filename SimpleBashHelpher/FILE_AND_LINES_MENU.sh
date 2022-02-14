#!/bin/ksh -x
#


SINGLE_GREP(){
	echo "Uwzględnić wielkość liter? Tak-Y / Nie-N"
	read GREP_LITERY
	echo "#######################################"
	if [ $GREP_LITERY == "Y" ] || [ $GREP_LITERY == "y" ] ; then
		echo "#######################################"			
		echo "Co chcesz wyszukać ? "
		read GREP
		echo "#######################################"
		echo "Z jakiego pliku grepujemy ? "
		read GREP_FILE_PATH
		echo "#######################################"
		echo "Wynik: "
		grep $GREP $GREP_FILE_PATH
		echo "#######################################"
		echo "Ilość lini z występującym ciągiem znaków:"
		grep $GREP $GREP_FILE_PATH > LINIE_W_DANYM_PLIKU 
		wc -l LINIE_W_DANYM_PLIKU
		rm LINIE_W_DANYM_PLIKU
		echo "#######################################"
		echo "Zapisać Wynik do pliku?  Tak-Y / Nie-N "
		read SAVE_GREP
		echo "#######################################"
			if [ $SAVE_GREP == "Y" ] || [ $SAVE_GREP == "y" ] ; then
				echo "Podaj ściężkę do jakiego pliku zapisać dane"
				read SAVE_GREP_FILES
				grep $GREP $GREP_FILE_PATH > $SAVE_GREP_FILES
				echo "Zapiano do $SAVE_GREP_FILES"
				echo "#######################################"
				echo "By kontynuować wpisz C"
				read CONTINUE
				case $CONTINUE in
					"C")  . ./SimpleBashHelper.sh ;;
					*) echo "Nie wpisano "C". Zakończono działanie programu."
				esac
			fi
		echo "By kontynuować wpisz C"
		read CONTINUE
		echo "#######################################"
		case $CONTINUE in
			"C")  . ./SimpleBashHelper.sh ;;
			*) echo "Nie wpisano "C". Zakończono działanie programu."
		esac
	fi
	if [ $GREP_LITERY == "N" ] || [ $GREP_LITERY == "n" ] ; then
		echo "Co chcesz wyszukać ? "
		read GREP2
		echo "#######################################"
		echo "Z jakiego pliku grepujemy ? "
		read GREP_FILE_PATH
		echo "#######################################"
		echo "Wynik: "
		grep -i $GREP2 $GREP_FILE_PATH
		echo "#######################################"
		echo "Ilość lini z występującym ciągiem znaków:"
		grep -i $GREP2 $GREP_FILE_PATH > LINIE_W_DANYM_PLIKU 
		wc -l LINIE_W_DANYM_PLIKU
		rm LINIE_W_DANYM_PLIKU
		echo "#######################################"
		echo "Zapisać Wynik do pliku?  Tak-Y / Nie-N "
		read SAVE_GREP
		echo "#######################################"
		if [ $SAVE_GREP == "Y" ] || [ $SAVE_GREP == "y" ] ; then
			echo "Podaj ściężkę do jakiego pliku zapisać dane"
			read SAVE_GREP_FILES
			grep -i $GREP1 $GREP2 > $SAVE_GREP_FILES
			echo "Zapiano do $SAVE_GREP_FILES"
			echo "#######################################"
			echo "By kontynuować wpisz C"
			read CONTINUE
			case $CONTINUE in
				"C")  . ./SimpleBashHelper.sh ;;
				*) echo "Nie wpisano "C". Zakończono działanie programu."
			esac
		fi
		echo "By kontynuować wpisz C"
		read CONTINUE
		echo "#######################################"
		case $CONTINUE in
			"C")  . ./SimpleBashHelper.sh ;;
			*) echo "Nie wpisano "C". Zakończono działanie programu."
		esac	
	
	fi
	
	
}

DOUBLE_GREP() {
	echo "Uwzględnić wielkość liter? Tak-Y / Nie-N"
	read GREP_LITERY
	echo "#######################################"
		if [ $GREP_LITERY == "Y" ] || [ $GREP_LITERY == "y" ] ; then
			echo "Wpisz pierwszy ciąg znaków "
			read GREP1
			echo "#######################################"
			echo "Wpisz drugi ciąg znaków "
			read GREP2
			echo "#######################################"
			echo "Z jakiego pliku grepujemy ? "
			read GREP_FILE_PATH
			echo "#######################################"
			echo "Wynik: "
			grep "$GREP1.*.$GREP2" $GREP_FILE_PATH
			echo "#######################################"
			echo "Ilość lini z występującym ciągiem znaków:"
			grep "$GREP1.*.$GREP2" $GREP_FILE_PATH > LINIE_W_DANYM_PLIKU 
			wc -l LINIE_W_DANYM_PLIKU
			rm LINIE_W_DANYM_PLIKU
			echo "#######################################"
			echo "Zapisać Wynik do pliku?  Tak-Y / Nie-N "
			read SAVE_GREP
			echo "#######################################"
			if [ $SAVE_GREP == "Y" ] || [ $SAVE_GREP == "y" ] ; then
				echo "Podaj ściężkę do jakiego pliku zapisać dane"
				read SAVE_GREP_FILES
				grep "$GREP1.*.$GREP2" $GREP_FILE_PATH > $SAVE_GREP_FILES
				echo "Zapiano do $SAVE_GREP_FILES"
				echo "#######################################"
				echo "By kontynuować wpisz C"
				read CONTINUE
				case $CONTINUE in
					"C")  . ./SimpleBashHelper.sh ;;
					*) echo "Nie wpisano "C". Zakończono działanie programu."
				esac
			fi
			echo "#######################################"	
			echo "By kontynuować wpisz C"
			case $CONTINUE in
				"C")  . ./SimpleBashHelper.sh ;;
				*) echo "Nie wpisano "C". Zakończono działanie programu."
			esac
		fi
		
		if [ $GREP_LITERY == "N" ] || [ $GREP_LITERY == "n" ] ; then
			echo "Wpisz pierwszy ciąg znaków "
			read GREP1
			echo "#######################################"
			echo "Wpisz drugi ciąg znaków "
			read GREP2
			echo "#######################################"
			echo "Z jakiego pliku grepujemy ? "
			read GREP3
			echo "#######################################"
			echo "Wynik: "
			grep -i "$GREP1.*.$GREP2" $GREP3
			echo "#######################################"
			echo "Ilość lini z występującym ciągiem znaków:"
			grep -i "$GREP1.*.$GREP2" $GREP3 > LINIE_W_DANYM_PLIKU 
			wc -l LINIE_W_DANYM_PLIKU
			rm LINIE_W_DANYM_PLIKU
			echo "#######################################"
			echo "Zapisać Wynik do pliku?  Tak-Y / Nie-N "
			read SAVE_GREP
			echo "#######################################"
			if [ $SAVE_GREP == "Y" ] || [ $SAVE_GREP == "y" ] ; then
				echo "Podaj nazwę lub ścieżkę i nazwę pliku do którego chcesz zapisać wynik"
				read SAVE_GREP_FILES
				grep -i "$GREP1.*.$GREP2" $GREP3 > $SAVE_GREP_FILES
				echo "Zapiano do $SAVE_GREP_FILES"
				echo "#######################################"
				echo "By kontynuować wpisz C"
				read CONTINUE
				case $CONTINUE in
					"C")  . ./SimpleBashHelper.sh ;;
					*) echo "Nie wpisano "C". Zakończono działanie programu."
				esac
			fi
			echo "#######################################"	
			echo "By kontynuować wpisz C"
			case $CONTINUE in
				"C")  . ./SimpleBashHelper.sh ;;
				*) echo "Nie wpisano "C". Zakończono działanie programu."
			esac
		fi
}

FIND_FILE() {
	echo "TEST"
	echo "Wpisz ciąg znaków który Cię interesuję."
	echo "!!!!Podpowiedź!!!! $ oznacza koniec lini, ^ początek."
	echo "Wpisując tutajtekstzkońcalinii$ wyszuka nam wszystki pliki gdzie występuje linia z danym tektem"
	echo "#######################################"
	echo "Wprowadz szukany tekst"
	read FIND_TEXT
	echo "#######################################"
	echo "Podaj ścieżkę katalogu do przeszukania"
	read GREP_DIR
	echo "#######################################"
	echo "Czy przeszukać podkatalogi jeśli takowe istnieją? Tak-Y / Nie-N"
	read GREP_R
		if [ $GREP_R == "N" ] || [ $GREP_R == "n" ] ; then
			echo "#######################################"
			echo "Podkatalogi które można przeszukać"
			grep $FIND_TEXT $GREP_DIR/*  | cut -d ":" -f1 | sort -u | cut -d ":" -f1 > $GREP_DIR/GREPPARAMOUT
			#clear
			echo "#######################################"
			echo "Wynik:"
			grep -v 'Is a directory' $GREP_DIR/GREPPARAMOUT
			rm $GREP_DIR/GREPPARAMOUT
			echo "#######################################"
			echo "By kontynuować wpisz C"
			read CONTINUE
			case $CONTINUE in
				"C")  . ./SimpleBashHelper.sh ;;
				*) echo "Nie wpisano "C". Zakończono działanie programu."
			esac
		fi
		if [ $GREP_R == "Y" ] || [ $GREP_R == "y" ] ; then
			echo "#######################################"
			echo "Wynik(cierpliwości):"
			grep -r $FIND_TEXT $GREP_DIR/*  | cut -d ":" -f1 | sort -u 
			echo "#######################################"
			echo "By kontynuować wpisz C"
			case $CONTINUE in
				"C")  . ./SimpleBashHelper.sh ;;
				*) echo "Nie wpisano "C". Zakończono działanie programu."
			esac
		fi

}

FIND_LINE_WITH_MORE_COLUMN () {
	echo "Podaj ilość kolumn które bierzemy pod uwagę:"
	read GREP_AWK_COLUMN
	echo "#######################################"
	echo "Podaj ściężkę pliku nad którym pracujemy:"
	read GREP_AWK_FILE_PATH
	`awk 'BEGIN{FS=",";}{if(NF>$GREP_AWK_COLUMN ) print $0;}' $GREP_AWK_FILE_PATH` 2> WYNIK
	sed -i 's/: /:/g' WYNIK
	cut -d ":" -f2 WYNIK
	cut -d ":" -f2 WYNIK > OUT
	echo "Czy chcesz zapisać wynik? TAK-Y, Nie-N"
	read GREP_AWK_SAVE
		if [ $GREP_AWK_SAVE == "Y" ] || [ $GREP_AWK_SAVE == "y" ] ; then
			echo "#######################################"
			echo "Podaj katalog gdzie zapisać plik"
			read DIV_PATH
			echo "#######################################"
			echo "Podaj nazwę pliku:"
			read FILE_NAME
			echo "#######################################"
			cat OUT > $DIV_PATH/$FILE_NAME
			echo "Plik zapisano:"
			echo $DIV_PATH/$FILE_NAME
			echo "#######################################"
		fi
	rm WYNIK
	rm OUT
	echo "#######################################"
	echo "By kontynuować wpisz C"
	read CONTINUE
	case $CONTINUE in
		"C")  . ./SimpleBashHelper.sh ;;
		*) echo "Nie wpisano "C". Zakończono działanie programu."
	esac	

}

SHOW_THE_LINE () {
	echo "#######################################"
	echo "1. Wyświetl x pierwszych linni"
	echo "2. Wyświetl x ostatnich linni"
	echo "3. Wyświetl linie od x do y"
	echo "4. Wyświetl linie o numerze"
	echo "5. Wyświetl linie od x do końca pliku"
	read SHOW_PARAMETER
	echo "#######################################"
	if [ $SHOW_PARAMETER == 1 ] ; then
		echo "Podaj ścieżkę do pliku:"
		read HEAD_FILE_PATH
		echo "#######################################"
		echo "Jaką ilość linii wyświetlić?"
		read HEAD
		echo "#######################################"
		head -n $HEAD $HEAD_FILE_PATH
		echo "#######################################"
		echo "Zapisać w pliku? TAK-Y NIE-N"
		read HEAD_SAVE
		echo "#######################################"
		if [ $HEAD_SAVE == "Y" ] || [ $HEAD_SAVE == "y" ] ; then
			echo "Podaj ścieżkę do katalogu, gdzie zapisać plik:"
			read HEAD_DIV_SAVE_PATH
			echo "#######################################"
			echo "Podaj pod jaką nazwą zapisać plik:"
			read HEAD_FILE_SAVE_PATH
			head -n $HEAD $HEAD_FILE_PATH > $HEAD_DIV_SAVE_PATH/$HEAD_FILE_SAVE_PATH
			echo "#######################################"
			echo "Dane zapisano w:"
			echo $HEAD_DIV_SAVE_PATH/$HEAD_FILE_SAVE_PATH
			echo "#######################################"
			echo "By kontynuować wpisz C"
			read CONTINUE
			if [ $CONTINUE == "C" ] ; then 
				. ./SimpleBashHelper.sh 
			fi
		fi
		echo "By kontynuować wpisz C"
		read CONTINUE
		if [ $CONTINUE == "C" ] ; then 
			. ./SimpleBashHelper.sh 
		fi
	fi
	if [ $SHOW_PARAMETER == 2 ] ; then
		echo "Podaj ścieżkę do pliku:"
		read TAIL_FILE_PATH
		echo "#######################################"
		echo "Jaką ilość linii wyświetlić?"
		read TAIL
		echo "#######################################"
		tail -n $TAIL $TAIL_FILE_PATH
		echo "#######################################"
		echo "Zapisać w pliku? TAK-Y NIE-N"
		read TAIL_SAVE
		echo "#######################################"
		if [ $TAIL_SAVE == "Y" ] || [ $TAIL_SAVE == "y" ] ; then
			echo "Podaj ścieżkę do katalogu, gdzie zapisać plik:"
			read TAIL_DIV_SAVE_PATH
			echo "#######################################"
			echo "Podaj pod jaką nazwą zapisać plik:"
			read TAIL_FILE_SAVE_PATH
			tail -n $TAIL $TAIL_FILE_PATH > $TAIL_DIV_SAVE_PATH/$TAIL_FILE_SAVE_PATH
			echo "#######################################"
			echo "Dane zapisano w:"
			echo $TAIL_DIV_SAVE_PATH/$TAIL_FILE_SAVE_PATH
			echo "#######################################"
			echo "By kontynuować wpisz C"
			read CONTINUE
			if [ $CONTINUE == "C" ] ; then 
				. ./SimpleBashHelper.sh 
			fi
		fi
		echo "By kontynuować wpisz C"
		read CONTINUE
		if [ $CONTINUE == "C" ] ; then 
			. ./SimpleBashHelper.sh 
		fi
		
	fi
	if [ $SHOW_PARAMETER == 3 ] ; then
		echo "Podaj ścieżkę do pliku:"
		read SED_FILE_PATH
		echo "#######################################"
		echo "Od której lini chcesz wyświetlić:"
		read SED_START
		echo "#######################################"
		echo "Do której linii chcesz wyświetlić:"
		read SED_END
		SED1=$SED_END'p'
		echo "#######################################"
		echo "WYNIK:"
		sed -n $SED_START,$SED1 $SED_FILE_PATH	
		echo "#######################################"
		echo "Zapisać dane? TAK-Y NIE-N"
		read SAVE_OPTION
		echo "#######################################"
		if [ $SAVE_OPTION == "Y" ] || [ $SAVE_OPTION == "y" ] ; then
			echo "Podaj ściężke katalogu, gdzie zapisać plik"
			read SAVE_DIV_PATH
			echo "#######################################"
			echo "Podaj nazwę pliku"
			read SAVE_FILE_NAME
			sed -n $SED_START,$SED1 $SED_FILE_PATH	> $SAVE_DIV_PATH/$SAVE_FILE_NAME
			echo "Dane zapisano w:"
			echo $SAVE_DIV_PATH/$SAVE_FILE_NAME
			echo "#######################################"
			echo "By kontynuować wpisz C"
			read CONTINUE
			if [ $CONTINUE == "C" ] ; then 
				. ./SimpleBashHelper.sh 
			fi
		fi
		echo "By kontynuować wpisz C"
		read CONTINUE
		if [ $CONTINUE == "C" ] ; then 
			. ./SimpleBashHelper.sh 
		fi
		
	fi
	if [ $SHOW_PARAMETER == 4 ] ; then
		echo "Podaj ścieżkę do pliku:"
		read LINE_FILE_PATH
		echo "#######################################"
		echo "Linię o jakim numerze chcesz wyświetlić?:"
		read LINE_NUMBER
		LINENUM=$LINE_NUMBER'p'
		sed -n $LINENUM $LINE_FILE_PATH	
		echo "#######################################"
	fi
	if [ $SHOW_PARAMETER == 5 ] ; then
		echo "Podaj ścieżkę do pliku:"
		read LINE_FILE_PATH
		echo "#######################################"
		echo "W pliku jest:"
		wc -l $LINE_FILE_PATH 
		echo "linii"
		echo "#######################################"
		echo "Od której linii chcesz wyświetlić:"	
		read LINE_NUMBER
		echo "#######################################"
		TEXT='$p'
		sed -n "$LINE_NUMBER,$TEXT" $LINE_FILE_PATH > OUTPUT
		cat OUTPUT
		echo "#######################################"
		echo "Czy zapisać dane do pliku? Tak-Y, Nie-N"
		read SED_SAVE_OPTION
		echo "#######################################"
		if [ $SED_SAVE_OPTION == "Y" ] || [ $SED_SAVE_OPTION == "y" ] ; then
			echo "Podaj katalog docelowy"
			read SED_DIV_PATH
			echo "#######################################"
			echo "Podaj nazwę plików w który zapisać dane"
			read SED_FILE_SAVE_NAME
			cat OUTPUT > $SED_DIV_PATH/$SED_FILE_SAVE_NAME
			echo "#######################################"
			echo "Plik zapisano w:"
			echo $SED_DIV_PATH/$SED_FILE_SAVE_NAME
			rm OUTPUT
			echo "#######################################"
			echo "By kontynuować wpisz C"
			read CONTINUE
			if [ $CONTINUE == "C" ] ; then 
				. ./SimpleBashHelper.sh 
			fi
		fi
		
		if [ -e OUTPUT ] ; then
			rm OUTPUT
		fi
		echo "By kontynuować wpisz C"
		read CONTINUE
		if [ $CONTINUE == "C" ] ; then 
			. ./SimpleBashHelper.sh 
		fi
		
	fi
	
}

SORT_FILE () {

echo "#######################################"
echo "Wprowadź pełną ścężkę do pliku, który zostanie przesortowany:"
read FILE_PATH
echo "#######################################"
echo "Czy chcesz usunąć duplikaty? Tat-Y / NIE - N"
read DELETE_DUPLICATS
echo "#######################################"
if [ $DELETE_DUPLICATS == "Y" ] || [ $DELETE_DUPLICATS == "y" ] ; then
	echo "Podaj ściężkę katalogu, gdzie zapisać plik:"
	read DIR_PATH
	echo "#######################################"
	echo "Podaj nazwę pliku pod jaką zapisać dane:"
	read SAVE_FILE_NAME
	sort -u $FILE_PATH > $DIR_PATH/$SAVE_FILE_NAME
	echo "Dane zapisano w:"
	echo $DIR_PATH/$SAVE_FILE_NAME
	echo "By kontynuować wpisz C"
	read CONTINUE
	if [ $CONTINUE == "C" ] ; then 
		. ./SimpleBashHelper.sh 
	fi
else 
echo "#######################################"
sort -u $FILE_PATH
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi
fi

}

DELETE_LINE () {

echo "#######################################"
echo "1.Usuń wszystkie puste linie"
echo "2.Usuń linie o danym numerze"
echo "3.Usuń linie zawierające dany ciąg"
echo "4.Usuń wszystkie linie, gdzie kolumna x jest podanym ciągiem[IN PROGRES]"
read DELETE_LINE_PAR
echo "#######################################"
echo "Wprowadz pełną ściężkę do pliku:"
read FILE_PATH
echo "#######################################"
echo "Wprowadz ściężkę do katalogu gdzie zapisać dane:"
read DIV_PATH
echo "#######################################"
echo "Wprowadz pod jaką nazwą zapisać dane:"
read FILE_SAVE_PATH
echo "#######################################"
if [ $DELETE_LINE_PAR == 1 ] ; then
	sed '/^[[:space:]]*$/d' $FILE_PATH > $DIV_PATH/$FILE_SAVE_PATH
	echo "Plik zapisano w:"
	echo $DIV_PATH/$FILE_SAVE_PATH
	echo "#######################################"
	echo "By kontynuować wpisz C"
	read CONTINUE
	if [ $CONTINUE == "C" ] ; then 
		. ./SimpleBashHelper.sh 
	fi
fi

if [ $DELETE_LINE_PAR == 2 ] ; then
	echo "#######################################"
	echo "1. Usunąć jedną linie"
	echo "2. Usunąć linie od x do y."
	read DELETE_LINE_PAR2
	echo "#######################################"
	if [ $DELETE_LINE_PAR2 == 1 ] ; then
	echo "Wprowadz numer linii do usunięcia"
		read LINE_NUMBER1
		PAR=$LINE_NUMBER1'd'
		sed -e $PAR $FILE_PATH > $DIV_PATH/$FILE_SAVE_PATH
		echo "Plik zapisano w:"
		echo $DIV_PATH/$FILE_SAVE_PATH
		echo "#######################################"
		echo "By kontynuować wpisz C"
		read CONTINUE
		if [ $CONTINUE == "C" ] ; then 
			. ./SimpleBashHelper.sh 
		fi
	fi
	if [ $DELETE_LINE_PAR2 == 2 ] ; then
	echo "UWAGA Linie zostaną usunięte włącznie UWAGA"
	echo "Wprowadz numer linii od której usuwamy"
	read LINE_NUMBER_START
	echo "#######################################"
	echo "Wprowadz numer linii do której usuwamy"
	read LINE_NUMBER_END
	PAR2=$LINE_NUMBER_START','$LINE_NUMBER_END'd'
	sed -e $PAR2 $FILE_PATH > $DIV_PATH/$FILE_SAVE_PATH
	echo "Plik zapisano w:"
	echo $DIV_PATH/$FILE_SAVE_PATH
	echo "#######################################"
	echo "By kontynuować wpisz C"
	read CONTINUE
	if [ $CONTINUE == "C" ] ; then 
		. ./SimpleBashHelper.sh 
	fi
	fi
fi
if [ $DELETE_LINE_PAR == 3 ] ; then
	echo "#######################################"
	echo "Z pliku zostaną usunięte linie o podanym ciągu znaków"
	echo "Wprowadź ciąg znaków:"
	read SNGS_DELETE
	echo "#######################################"
	echo "Uwzględnić wielkość znaków? TAK-Y, NIE -N"
	read SIZE
	if [ $SIZE == "Y" ] || [ $SIZE == "y" ] ; then 
		grep -v $SNGS_DELETE $FILE_PATH > $DIV_PATH/$FILE_SAVE_PATH
		echo "Plik zapisano w:"
		echo $DIV_PATH/$FILE_SAVE_PATH
		echo "#######################################"
		echo "By kontynuować wpisz C"
		read CONTINUE
		if [ $CONTINUE == "C" ] ; then 
			. ./SimpleBashHelper.sh 
		fi
	else
		grep -i -v $SNGS_DELETE $FILE_PATH > $DIV_PATH/$FILE_SAVE_PATH
		echo "Plik zapisano w:"
		echo $DIV_PATH/$FILE_SAVE_PATH
		echo "#######################################"
		echo "By kontynuować wpisz C"
		read CONTINUE
		if [ $CONTINUE == "C" ] ; then 
			. ./SimpleBashHelper.sh 
		fi
	fi
fi

if [ $DELETE_LINE_PAR == 4 ] ; then

	echo "2 pierwsze linie pliku do podglądu:"
	head -n 2 $FILE_PATH
	echo "#######################################"
	echo "Określ co oddziela kolejne kolumny. Powyżej podgląd"
	echo "Przykład: , |  '""' : ; czy po prostu spacja"
	read SPLIT_COLUMN
	SPLIT_COLUMN2=''"$SPLIT_COLUMN"''
	echo "#######################################"
	echo "Podaj którą kolumnę bierzemy pod uwagę:"
	read COLUMN_NUM
	COL='!('$''$COLUMN_NUM' == '$SIGN_NUM')'
	echo "#######################################"
	echo "Podaj ciąg znaków brany pod uwagę"
	read SIGN_NUM
	PAR_COLUMN='$SPLIT_COLUMN2 ' $COL''
	echo $PAR_COLUMN
	echo "#######################################"
	awk -F $PAR_COLUMN $FILE_PATH > $DIV_PATH/$FILE_SAVE_PATH
	echo "Dane zapisano w:"
	echo $DIV_PATH/$FILE_SAVE_PATH
	echo "#######################################"
	echo "By kontynuować wpisz C"
	read CONTINUE
	if [ $CONTINUE == "C" ] ; then 
		. ./SimpleBashHelper.sh 
	fi
fi


}

SED_TEXT () {
echo "#######################################"
echo "Wprowadź pełną ścężkę do pliku, który zostanie przeedytowany:"
read FILE_PATH
echo "#######################################"
echo "Jaki ciąg znaków chcesz zastąpić?:"
read SED_INPUT
echo "#######################################"
echo "Czym chcesz zastąpić dany ciąg znaków?"
read SED_OUTPUT
echo "#######################################"
echo "Wprowadz ściężkę do katalogu gdzie zapisać dane:"
read SED_DIV_PATH
echo "#######################################"
echo "Wprowadz pod jaką nazwą zapisać dane:"
read SED_FILE_SAVE_PATH
echo "#######################################"
SED=''s/$SED_INPUT/$SED_OUTPUT/g''
sed $SED $FILE_PATH > $SED_DIV_PATH/$SED_FILE_SAVE_PATH
echo "#######################################"
echo "Dane zapisano w:"
echo $SED_DIV_PATH/$SED_FILE_SAVE_PATH
echo "#######################################"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi
}

SED_START_END () {
echo "#######################################"
echo "Wprowadź pełną ścężkę do pliku, który zostanie przeedytowany:"
read FILE_PATH
echo "#######################################"
echo "Wprowadz ściężkę do katalogu gdzie zapisać dane:"
read SED_DIV_PATH
echo "#######################################"
echo "Wprowadz pod jaką nazwą zapisać dane:"
read SED_FILE_SAVE_PATH
echo "#######################################"
echo "1. Wprowadz tekst na początek każdej linii."
echo "2. Wprowadz tekst na koniec każdej linii."
read OPTION_SED_START_END
if [ $OPTION_SED_START_END == 1 ] ; then
	echo "#######################################"
	echo "Jaki tekst chcesz wstawić na początek Linii:"
	read SED_START_TEXT
	SED=''s/^/$SED_START_TEXT/g''
	sed $SED $FILE_PATH > $SED_DIV_PATH/$SED_FILE_SAVE_PATH
	echo "#######################################"
	echo "Dane zapisano w:"
	echo $SED_DIV_PATH/$SED_FILE_SAVE_PATH
fi
if [ $OPTION_SED_START_END == 2 ] ; then
	echo "#######################################"
	echo "Jaki tekst chcesz wstawić na koniec Linii:"
	read SED_START_TEXT
	SED=''s/$/$SED_START_TEXT/g''
	sed $SED $FILE_PATH > $SED_DIV_PATH/$SED_FILE_SAVE_PATH
	echo "#######################################"
	echo "Dane zapisano w:"
	echo $SED_DIV_PATH/$SED_FILE_SAVE_PATH
fi
echo "#######################################"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi
}

FILE_AND_LINES_MENU (){
    echo "By przerwać użyj "ctrl + c"";
	echo "Podpowiedź $ oznacza koniec lini, ^ początek.";
	echo "1. By znaleźć LINIĘ z jednym ciągiem znaków(zlicza ilość lini o danym ciągu znaków)";
	echo "2. By znaleźć LINIĘ z dwoma ciągami znaków(zlicza ilość lini o danym ciągu znaków)";
	echo "3. Znaleźć PLIKI zawierające dany ciąg znaków w określonym katalogu";
	echo "4. Wyciągnij LINIE z danego pliku, gdzie występuje więcej kolumn niż";
	echo "5. Wyświetl określoną ilość LINII";
	echo "6. Przesortuj LINIĘ i/lub usuń duplikaty";
	echo "7. Usuń linię.";
	echo "8. Podmień dany ciąg znaków.";
	echo "9. Wstaw na początku lub na końcu linii dany ciąg znaków.";
	read FILE_AND_LINES_MENU_READ
	case "$FILE_AND_LINES_MENU_READ" in
		"1") SINGLE_GREP ;;
		"2") DOUBLE_GREP ;;
		"3") FIND_FILE ;;
		"4") FIND_LINE_WITH_MORE_COLUMN ;;
		"5") SHOW_THE_LINE ;;
		"6") SORT_FILE ;;
		"7") DELETE_LINE ;;
		"8") SED_TEXT ;;
		"9") SED_START_END ;;
		
		*) echo "TEST"
	esac
	
}




