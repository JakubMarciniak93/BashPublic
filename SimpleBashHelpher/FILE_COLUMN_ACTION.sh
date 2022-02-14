#!/bin/ksh -x
#

PRINT_COLUMN_FROM_FILE () {
echo "#######################################"
echo "Podaj pełną ściężkę do pliku:"
read FILE_PATH
echo "Przykładowe 2 pierwsze linie pliku:"
head -n 2 $FILE_PATH
echo "#######################################"
echo "UWAGA By wyciągnąć kolumne UWAGA"
echo "Wyciągając kolumne 1 i 3 wpisz: "'$1'""' "TUTAJ" '""'$3'""
echo "Symbol umieszczony w "TUTAJ" określa nam, co będzie oddzielać kolumny w wyniku wyszukiwania"
echo "Wpisując tylko "'$1,$3'" kolumny będzie oddzielać spacja"
echo "Można zamieniać kolumny miejscami np. najpierw wyświetlić kolumne nr 3 a pozniej nr 2"
echo "Wpisz które kolumny Cię interesują"
read NUM_COLUMN 
echo "#######################################"
echo "Jaki symbol lub symbole odzielają kolejne kolumny? "
read SPLIT
echo "#######################################"
echo "Zapisać dane do pliku? Tak - Y, Nie - N"
read SAVE_FILE
B="'"
if [ $SAVE_FILE == "Y" ] || [ $SAVE_FILE == "y" ] ; then
	echo "Podaj ściężkę do katalogu, gdzie zapisać plik:"
	read DIV_SAVE_PATH
	echo "#######################################"
	echo "Podaj nazwę pliku, gdzie zapisać wynik:"
	read FILE_SAVE_PATH
	echo "#######################################"
	echo "Zakończ proces i wklej poniższą linię w obecny terminal lub otwórz nowe okno terminala by pozyskać wynik"
	echo "awk -F $B$SPLIT$B '{ print $NUM_COLUMN }' < $FILE_PATH > $DIV_SAVE_PATH/$FILE_SAVE_PATH"
	echo "#######################################"
	echo "Dane zostaną zapisane w:"
	echo $DIV_SAVE_PATH/$FILE_SAVE_PATH
	echo "#######################################"
fi

if [ $SAVE_FILE == "N" ] || [ $SAVE_FILE == "n" ]; then
	echo "#######################################"
	echo "Zakończ proces i wklej poniższą linię w obecny terminal lub otwórz nowe okno terminala by pozyskać wynik"
	echo "awk -F $B$SPLIT$B '{ print $NUM_COLUMN}' < $FILE_PATH "
fi
	
echo "By zakończyć wciśnij cntr + c"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" || [ $CONTINUE == "c" ] ] ; then 
	. ./SimpleBashHelper.sh 
fi
	
}

COUNT_V_FROM_COLUMN () {
echo "#######################################"
echo "W tym podpunkcjie tworzymy linie kodu, którą wymaga się wkleić w terminal."
echo "Wybierz opcje :"
echo "1. Podlicz wartości z kolumny X"
echo "2. Podlicz wartości w kolumnie X przypisane do wartości z Kolumny Y "
echo "3. Podlicz wartość w kolumnie X jeśli w kolumnie Y jest ciąg tekstowy XYZ"
echo "4. Zlicz ilość lini, gdzię w kolumnie X występuje ciąg znaków ABC"
read COUNT_V_FROM_COLUMN_OPTION
echo "#######################################"
echo "Podaj pełną ściężkę do pliku:"
read FILE_PATH
echo "Przykładowe 2 pierwsze linie pliku:"
head -n 2 $FILE_PATH
echo "#######################################"
echo "#######################################"
echo "#######################################"

if [ $COUNT_V_FROM_COLUMN_OPTION == "1" ] ; then 
	echo "By określić nr 2 wpisz : "'$2'""
	echo "Wartość z której kolumny podsumować:"
	read WHAT_COLUMN
	echo "#######################################"
	echo "Jaki symbol lub symbole oddziela kolejne kolumny?"
	read SPLIT
	B="'"
	echo "#######################################"
	echo "Zakończ proces i wklej poniższą linię w obecny terminal lub otwórz nowe okno terminala by pozyskać wynik"
	echo "awk -v FS=$B$SPLIT$B '{total+=$WHAT_COLUMN} END {print total}' $FILE_PATH"
fi
if [ $COUNT_V_FROM_COLUMN_OPTION == "2" ] ; then 
	echo "By określić nr 2 wpisz : "'$2'""
	echo "Wartość z której kolumny podsumować:"
	read WHAT_COLUMN2
	echo "#######################################"
	echo "Do danych z której kolumny przypisać sume:"
	read WHAT_COLUMN3
	echo "#######################################"
	echo "Jaki symbol lub symbole oddziela kolejne kolumny?"
	read SPLIT
	B="'"
	echo "#######################################"
	echo "Zakończ proces i wklej poniższą linię w obecny terminal lub otwórz nowe okno terminala by pozyskać wynik"
	echo "awk -v FS='$B$SPLIT$B' '{a[$WHAT_COLUMN3] += $WHAT_COLUMN2} END{for (i in a) print i, a[i]}' $FILE_PATH"
fi
if [ $COUNT_V_FROM_COLUMN_OPTION == "3" ] ; then 
	echo "Jaki ciąg znaków będzie brany pod uwagę?"
	read SIGNS_ABC
	echo "#######################################"
	echo "By określić nr 2 wpisz : "'$2'""
	echo "Którą kolumna bieżemy pod uwagę jako ciąg znaków"
	read WHAT_COLUMN1
	echo "#######################################"
	echo "By określić nr 2 wpisz : "'$2'""
	echo "Wartość w której kolumnie sumujemy?"
	read WHAT_COLUMN2
	echo "#######################################"
	echo "Jaki symbol lub symbole oddziela kolejne kolumny?"
	read SPLIT
	B="'"
	echo "#######################################"
	echo "Zakończ proces i wklej poniższą linię w obecny terminal lub otwórz nowe okno terminala by pozyskać wynik"
	echo "awk -F '$B$SPLIT$B' '$WHAT_COLUMN1 ~ /$SIGNS_ABC/ {sum += $WHAT_COLUMN2} END {print sum}' $FILE_PATH"
fi

if [ $COUNT_V_FROM_COLUMN_OPTION == "4" ] ; then 
	echo "Jaki ciąg znaków będzie brany pod uwagę?"
	read SIGNS_ABC
	echo "#######################################"
	echo "By określić nr 2 wpisz : "'$2'""
	echo "Którą kolumna bieżemy pod uwagę jako ciąg znaków"
	read WHAT_COLUMN1
	echo "#######################################"
	echo "Jaki symbol lub symbole oddziela kolejne kolumny?"
	read SPLIT
	B="'"
	echo "#######################################"
	echo "Zakończ proces i wklej poniższą linię w obecny terminal lub otwórz nowe okno terminala by pozyskać wynik"
	echo "awk -F '$B$SPLIT$B' '$WHAT_COLUMN1 ~ /$SIGNS_ABC/ { count++ } END { print count }' $FILE_PATH"
fi

echo "By zakończyć wciśnij cntr + c"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" || [ $CONTINUE == "c" ] ] ; then 
	. ./SimpleBashHelper.sh 
fi


}

PRINT_LINE_WITH_SAME_COLUMN () {
echo "IN PROGRESS"
echo "1. Wypisz linie, gdzie kolumny X,Y,Z są takie same"
echo "2. Wypisz kolumny A,B,C, gdzie kolumny X,Y,Z są takie same w określonych liniach"
echo "#######################################"
echo "Podaj pełną ściężkę do pliku:"
read FILE_PATH
echo "Przykładowe 2 pierwsze linie pliku:"
head -n 2 $FILE_PATH
echo "#######################################"
}

CHANGE_COLUMNS() {
echo "test"
}

FILE_COLUMN_ACTION (){
	echo "#######################################"
	echo "By przerwać wpisz "ctrl + c"";
	echo "Działanie na kolumnach za pomocą AWK wymaga otwarcia drugiego oddzielnego terminala, gdzie będziemy wykonywać wygenerowany kod"
	echo "Ma to na celu pomóc w poprawności wygenerowanych danych"
	echo "1. Wyciągnij określone kolumny z pliku";
	echo "2. Podlicz wartości w danej kolumnie";
	echo "3. Wypisz linie, gdzie kolumny są...";
	echo "4. Podmień kolumny...[In Progres]";
	read FILE_COLUMN_ACTION
	case "$FILE_COLUMN_ACTION" in
		"1") PRINT_COLUMN_FROM_FILE ;;
		"2") COUNT_V_FROM_COLUMN ;;
		"3") PRINT_LINE_WITH_SAME_COLUMN ;;
		"4") CHANGE_COLUMNS ;;
		*) echo "TEST"
	esac
	
}




