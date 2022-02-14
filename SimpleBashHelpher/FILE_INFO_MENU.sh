#!/bin/ksh -x
#

SIZE_LINE_BIT_INFO () {

echo "#######################################"
echo "Podaj ściężkę pliku który chcesz przeanalizować"
read FILE_PATH
echo "#######################################"
echo "Co chcesz zrobić?"
echo "1. Zlicz ilość linii w pliku"
echo "2. Zlicz ilość wyrazów w pliku"
echo "3. Zlicz ilość znaków/bajtów w pliku"
echo "Następne opcje IN PROGRESS"
read INFO_CHOOSE2
echo "#######################################"
if [ $INFO_CHOOSE2 == 1 ] ; then 
	echo "Wynik:"
	wc -l $FILE_PATH
	echo "By kontynuować wpisz C"
	read CONTINUE
	if [ $CONTINUE == "C" ] ; then 
		. ./SimpleBashHelper.sh 
	fi
fi
if [ $INFO_CHOOSE2 == 2 ] ; then 
	echo "Wynik:"
	wc -w $FILE_PATH
	echo "By kontynuować wpisz C"
	read CONTINUE
	if [ $CONTINUE == "C" ] ; then 
		. ./SimpleBashHelper.sh 
	fi
fi
if [ $INFO_CHOOSE2 == 3 ] ; then 
	echo "Wynik:"
	wc -c $FILE_PATH
	echo "By kontynuować wpisz C"
	read CONTINUE
	if [ $CONTINUE == "C" ] ; then 
		. ./SimpleBashHelper.sh 
	fi
fi

}

FILE_REVIEW () {

echo "#######################################"
echo "By zakończyć przeglądanie pliku wciśnij q"
echo "Po pliku poruszaj się za pomocą strzałek"
echo "Podaj ściężkę pliku który chcesz przeanalizować"
read FILE_PATH
echo "#######################################"
less $FILE_PATH
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi

}

FILE_DATE_MODIFY () {
echo "Wprowadz pełną ściężkę do pliku/katalogu"
read FILE_PATH
echo "#######################################"
echo "Ostatnio zmodyfikowano:"
date -r $FILE_PATH "+%m-%d-%Y %H:%M:%S"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi
}

FILE_INFO_MENU (){
	echo "#######################################"
	echo "By przerwać użyj "ctrl + c"";
	echo "Jaka informacja Cię interesuje?";
	echo "1. Poznaj ilość linii/wyrazów/Bajtów";
	echo "2. Przejrzyj dany plik";
	echo "3. Data ostatniej modyfikacji"
	read FILE_INFO_PAR
	case "$FILE_INFO_PAR" in
		"1") SIZE_LINE_BIT_INFO ;;
		"2") FILE_REVIEW ;;
		"3") FILE_DATE_MODIFY ;; 
		*) echo "TEST"
	esac
	
}




