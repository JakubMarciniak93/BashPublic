#!/bin/ksh -x
#


FILE_TAR_MENU_TAR (){
	echo "#######################################"
	echo "By przerwać użyj "ctrl + c""
	echo "Wybrano konwersję/dekonwersję"
	echo "Co chcesz dalej zrobić?"
	echo "1. Spakowanie danego pliku/katalogu."
	echo "2. Rozpakowanie danego pliku/katalogu."
	read TAR_PARAMETER
	echo "#######################################"
	if [ $TAR_PARAMETER == 1 ] ; then
		echo "Wprowadź ściężkę do katalogu, gdzie znajduje się plik/katalog."
		read TAR_FOLDER_PATH
		cd $TAR_FOLDER_PATH
		echo "Znajdujesz się w:"
		pwd
		echo "Lista Plików i Folderów w danym miejscu"
		ls 
		echo "#######################################"
		echo "Podaj nazwę pliku/katalogu który pakujemy:"
		read TAR_FILE_PATH
		echo "#######################################"
		echo "Jak nazwać spakowany plik:"
		read TAR_FILE_PATH2
		echo "#######################################"
		echo "Rozpoczęcie pakowania pliku"
		tar -czvf $TAR_FILE_PATH2 $TAR_FILE_PATH
		echo "#######################################"
		echo "Plik został spakowany w folderze:"
		pwd
		echo "Jego nazwa to:"
		echo $TAR_FILE_PATH2
		echo "#######################################"
		echo "By kontynuować wpisz C"
		read CONTINUE
		if [ $CONTINUE == "C" ] ; then 
			. ./SimpleBashHelper.sh
		fi
	fi
	if [ $TAR_PARAMETER == 2 ] ; then
		echo "Wprowadź ściężkę do katalogu, gdzie znajduje się plik do rozpakowania:"
		read UNTAR_FOLDER_PATH
		cd $UNTAR_FOLDER_PATH
		echo "#######################################"
		echo "Lista plików w danym miejscu"
		ls
		echo "#######################################"
		echo "Podaj nazwę pliku, który rozpakujemy"
		read UNTAR_FILE_NAME
		echo "#######################################"
		echo "Podaj ścieżkę, gdzie rozpakować plik:"
		read UNTAR_FOLDER_PATH2
		echo "#######################################"
		echo "Zawartość Katalogu przed rozpakowaniem pliku:"
		ls $UNTAR_FOLDER_PATH2
		echo "#######################################"
		tar -xf $UNTAR_FILE_NAME -C $UNTAR_FOLDER_PATH2
		cd $UNTAR_FOLDER_PATH2
		echo "Zawartość Katalogu po rozpakowaniu pliku."
		ls
		echo "#######################################"
		cd ..
		echo "By kontynuować wpisz C"
		read CONTINUE
		if [ $CONTINUE == "C" ] ; then 
			. ./SimpleBashHelper.sh
		fi
	fi
	
}

COPY_FILE_DIV () {
echo "#######################################"
echo "1. Kopiujemy plik"
echo "2. Kopiujemy cały katalogu"
read COPY_FILE_DIV_OPTION
echo "#######################################"
echo "Wprowadź pełną ściężkę  pliku lub katalogu który przekopiujemy:"
read COPY_FILE
echo "#######################################"
echo "Wprowadź pełną ściężkę, gdzie przekopiować dane:"
read OUT_COPY_PATH
echo "#######################################"
if [ $COPY_FILE_DIV_OPTION == 1 ] ; then
	echo "Jeśli chcesz skopiować wiecej niż jeden plik wprowadź ich pełną ściężkę po spcaji"
	echo "Np.: PLIK1 PLIK2 PLIK3"
	echo "#######################################"
	cp $COPY_FILE  $OUT_COPY_PATH
	echo "Przekopiowano do $OUT_COPY_PATH"
fi
if [ $COPY_FILE_DIV_OPTION == 2 ] ; then
	cp -r $COPY_FILE  $OUT_COPY_PATH
	echo "Przekopiowano do $OUT_COPY_PATH"
fi
}

MOVE_FILE_DIV() {
echo "#######################################"
echo "1. Przonosimy plik"
echo "2. Przonosimy cały katalogu"
read MOVE_FILE_DIV_OPTION
echo "#######################################"
echo "Wprowadź pełną ściężkę  pliku lub katalogu który przenosimy:"
read MOVE_FILE
echo "#######################################"
echo "Wprowadź pełną ściężkę, gdzie przenieśc dane:"
read OUT_MOVE_PATH
echo "#######################################"
if [ $MOVE_FILE_DIV_OPTION == 1 ] ; then
	mv $MOVE_FILE  $OUT_MOVE_PATH
	echo "Przeniesiono do $OUT_MOVE_PATH"
fi
if [ $MOVE_FILE_DIV_OPTION == 2 ] ; then
	cp -r $MOVE_FILE  $OUT_MOVE_PATH || rm -r $MOVE_FILE
	echo "Przeniesiono do $OUT_MOVE_PATH"
fi

}

FILE_TAR_MENU (){
    echo "By przerwać użyj "ctrl + c"";
	echo "Podpowiedź $ oznacza koniec lini, ^ początek.";
	echo "1. Spakowanie/Rozpakowanie danego pliku.";
	echo "2. Kopiowanie danego pliku lub katalogu.";
	echo "3. Przenieś dany plik/katalog(Wytnij->Wklej).";
	read FILE_AND_LINES_MENU_READ
	case "$FILE_AND_LINES_MENU_READ" in
		"1") FILE_TAR_MENU_TAR ;;
		"2") COPY_FILE_DIV ;; 
		"3") MOVE_FILE_DIV ;;
		*) echo "TEST"
	esac
	
}


