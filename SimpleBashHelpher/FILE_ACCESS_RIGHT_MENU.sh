#!/bin/bash
#

ALL_ACCESS () {
echo "#######################################"
echo "Wprowadz pełną ścieżkę do pliku:"
read FILE_PATH
echo "#######################################"
echo "1. Nadaj Wszystkie uprawnienia"
echo "2. Odbierz Wszystkie uprawnienia"
read ALL_ACCESS_OPTION
if [ $ALL_ACCESS_OPTION == 1 ]; then
	chmod 777 $FILE_PATH
	echo "Przyznano Pełne prawa dostępu plik:"
	echo $FILE_PATH
fi
if [ $ALL_ACCESS_OPTION == 2 ]; then
	chmod 000 $FILE_PATH
	echo "Odebrano Pełne prawa dostępu plik:"
	echo $FILE_PATH
fi
echo "#######################################"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi
}

ALL_USERS_ACCESS_MENU () {
echo "#######################################"
echo "Wprowadz pełną ścieżkę do pliku:"
read FILE_PATH
echo "#######################################"
echo "1. Nadaj prawa tylko do odczytu"
echo "2. Nadaj prawa tylko do zapisu"
echo "3. Nadaj prawa tylko do wykonywania pliku"
echo "4. Nadaj prawa tylko do odczytu i zapisu"
echo "5. Nadaj prawa tylko do zapisu i wykonywania"
echo "6. Nadaj prawa tylko do odczytu i wykonywania"
read ALL_USERS_ACCESS
echo "#######################################"
if [ $ALL_USERS_ACCESS == 1 ]; then
	chmod 444 $FILE_PATH
	echo "Nadano prawa tylko do odczytu dla wszystkich"
	echo $FILE_PATH
fi
if [ $ALL_USERS_ACCESS == 2 ]; then
	chmod 222 $FILE_PATH
	echo "Nadano prawa tylko do zapisu dla wszystkich"
	echo $FILE_PATH
fi
if [ $ALL_USERS_ACCESS == 3 ]; then
	chmod 111 $FILE_PATH
	echo "Nadano prawa tylko do wykonywania dla wszystkich"
	echo $FILE_PATH
fi
if [ $ALL_USERS_ACCESS == 4 ]; then
	chmod 666 $FILE_PATH
	echo "Nadano prawa do odczytu i zapisu dla wszystkich"
	echo $FILE_PATH
fi
if [ $ALL_USERS_ACCESS == 5 ]; then
	chmod 333 $FILE_PATH
	echo "Nadano prawa do zapisu i wykonania dla wszystkich"
	echo $FILE_PATH
fi
if [ $ALL_USERS_ACCESS == 6 ]; then
	chmod 555 $FILE_PATH
	echo "Nadano prawa do odczytu i wykonania dla wszystkich"
	echo $FILE_PATH
fi
echo "#######################################"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi
}

OWNER_USERS_ACCESS_MENU () {
echo "#######################################"
echo "Wprowadz pełną ścieżkę do pliku:"
read FILE_PATH
echo "#######################################"
echo "1. Nadaj prawa tylko do odczytu"
echo "2. Nadaj prawa tylko do zapisu"
echo "3. Nadaj prawa tylko do wykonywania pliku"
echo "4. Nadaj prawa tylko do odczytu i zapisu"
echo "5. Nadaj prawa tylko do zapisu i wykonywania"
echo "6. Nadaj prawa tylko do odczytu i wykonywania"
read OWNER_USERS_ACCESS
echo "#######################################"
if [ $OWNER_USERS_ACCESS == 1 ]; then
	chmod 400 $FILE_PATH
	echo "Nadano prawa tylko do odczytu dla wszystkich"
	echo $FILE_PATH
fi
if [ $OWNER_USERS_ACCESS == 2 ]; then
	chmod 200 $FILE_PATH
	echo "Nadano prawa tylko do zapisu dla wszystkich"
	echo $FILE_PATH
fi
if [ $OWNER_USERS_ACCESS == 3 ]; then
	chmod 100 $FILE_PATH
	echo "Nadano prawa tylko do wykonywania dla wszystkich"
	echo $FILE_PATH
fi
if [ $OWNER_USERS_ACCESS == 4 ]; then
	chmod 600 $FILE_PATH
	echo "Nadano prawa do odczytu i zapisu dla wszystkich"
	echo $FILE_PATH
fi
if [ $OWNER_USERS_ACCESS == 5 ]; then
	chmod 300 $FILE_PATH
	echo "Nadano prawa do zapisu i wykonania dla wszystkich"
	echo $FILE_PATH
fi
if [ $OWNER_USERS_ACCESS == 6 ]; then
	chmod 500 $FILE_PATH
	echo "Nadano prawa do odczytu i wykonania dla wszystkich"
	echo $FILE_PATH
fi
echo "#######################################"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi
}

GROUP_USERS_ACCESS_MENU () {
echo "#######################################"
echo "Wprowadz pełną ścieżkę do pliku:"
read FILE_PATH
echo "#######################################"
echo "1. Nadaj prawa tylko do odczytu"
echo "2. Nadaj prawa tylko do zapisu"
echo "3. Nadaj prawa tylko do wykonywania pliku"
echo "4. Nadaj prawa tylko do odczytu i zapisu"
echo "5. Nadaj prawa tylko do zapisu i wykonywania"
echo "6. Nadaj prawa tylko do odczytu i wykonywania"
read GROUP_USERS_ACCESS
echo "#######################################"
if [ $GROUP_USERS_ACCESS == 1 ]; then
	chmod 040 $FILE_PATH
	echo "Nadano prawa tylko do odczytu dla wszystkich"
	echo $FILE_PATH
fi
if [ $GROUP_USERS_ACCESS == 2 ]; then
	chmod 020 $FILE_PATH
	echo "Nadano prawa tylko do zapisu dla wszystkich"
	echo $FILE_PATH
fi
if [ $GROUP_USERS_ACCESS == 3 ]; then
	chmod 010 $FILE_PATH
	echo "Nadano prawa tylko do wykonywania dla wszystkich"
	echo $FILE_PATH
fi
if [ $GROUP_USERS_ACCESS == 4 ]; then
	chmod 060 $FILE_PATH
	echo "Nadano prawa do odczytu i zapisu dla wszystkich"
	echo $FILE_PATH
fi
if [ $GROUP_USERS_ACCESS == 5 ]; then
	chmod 030 $FILE_PATH
	echo "Nadano prawa do zapisu i wykonania dla wszystkich"
	echo $FILE_PATH
fi
if [ $GROUP_USERS_ACCESS == 6 ]; then
	chmod 050 $FILE_PATH
	echo "Nadano prawa do odczytu i wykonania dla wszystkich"
	echo $FILE_PATH
fi
echo "#######################################"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi
}

OTHERS_USERS_ACCESS_MENU () {
echo "#######################################"
echo "Wprowadz pełną ścieżkę do pliku:"
read FILE_PATH
echo "#######################################"
echo "1. Nadaj prawa tylko do odczytu"
echo "2. Nadaj prawa tylko do zapisu"
echo "3. Nadaj prawa tylko do wykonywania pliku"
echo "4. Nadaj prawa tylko do odczytu i zapisu"
echo "5. Nadaj prawa tylko do zapisu i wykonywania"
echo "6. Nadaj prawa tylko do odczytu i wykonywania"
read OTHERS_USERS_ACCESS
echo "#######################################"
if [ $OTHERS_USERS_ACCESS == 1 ]; then
	chmod 004 $FILE_PATH
	echo "Nadano prawa tylko do odczytu dla wszystkich"
	echo $FILE_PATH
fi
if [ $OTHERS_USERS_ACCESS == 2 ]; then
	chmod 002 $FILE_PATH
	echo "Nadano prawa tylko do zapisu dla wszystkich"
	echo $FILE_PATH
fi
if [ $OTHERS_USERS_ACCESS == 3 ]; then
	chmod 001 $FILE_PATH
	echo "Nadano prawa tylko do wykonywania dla wszystkich"
	echo $FILE_PATH
fi
if [ $OTHERS_USERS_ACCESS == 4 ]; then
	chmod 006 $FILE_PATH
	echo "Nadano prawa do odczytu i zapisu dla wszystkich"
	echo $FILE_PATH
fi
if [ $OTHERS_USERS_ACCESS == 5 ]; then
	chmod 003 $FILE_PATH
	echo "Nadano prawa do zapisu i wykonania dla wszystkich"
	echo $FILE_PATH
fi
if [ $OTHERS_USERS_ACCESS == 6 ]; then
	chmod 005 $FILE_PATH
	echo "Nadano prawa do odczytu i wykonania dla wszystkich"
	echo $FILE_PATH
fi
echo "#######################################"
echo "By kontynuować wpisz C"
read CONTINUE
if [ $CONTINUE == "C" ] ; then 
	. ./SimpleBashHelper.sh 
fi

}

FILE_ACCESS_RIGHT_MENU (){
	echo "#######################################"
    echo "By przerwać użyj "ctrl + c"";
	echo "1. Nadaj/odbierz wszystkie uprawnienia dla wszystkich użytkowników.";
	echo "2. Nadaj uprawnienia wszystkim użytkownikom";
	echo "3. Nadaj uprawnienia tylko właścicielowi pliku";
	echo "4. Nadaj uprawnienia grupie";
	echo "5. Nadaj uprawnienia innym";
	read FILE_AND_LINES_MENU_READ
	case "$FILE_AND_LINES_MENU_READ" in
		"1") ALL_ACCESS ;;
		"2") ALL_USERS_ACCESS_MENU ;;
		"3") OWNER_USERS_ACCESS_MENU ;;
		"4") GROUP_USERS_ACCESS_MENU ;;
		"5") OTHERS_USERS_ACCESS_MENU ;;
		*) echo "TEST"
	esac
	
}




