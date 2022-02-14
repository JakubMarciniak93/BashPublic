#!/bin/ksh -x
#

. FILE_AND_LINES_MENU.sh
. FILE_INFO_MENU.sh
. FILE_TAR_MENU.sh
. FILE_ACCESS_RIGHT_MENU.sh
. FILE_COLUMN_ACTION.sh

echo "#######################################"
echo "Rozszerz okno conajmniej na połowe swojego ekranu"
echo "By przerwać wpisz "ctrl + c""
echo "1. Plik i działania na liniach/wersach"
echo "2. Działania na kolumnach"
echo "."
echo "."
echo "."
echo "7. Pozyskaj informację o pliku/zarzadzanie plikiem"
echo "8. Konwersja/dekonwersja/kopiowanie/przenoszenie plików"
echo "9. Nadanie/Edycja praw dostępu do pliku"
echo "UWAGA By wyświetlić drzewko procesów wpisz INFO"
read MAINMENU

INFO_TREE() {
echo "1. Plik i działania na liniach/wersach"
echo "    *1. By znaleźć LINIĘ z jednym ciągiem znaków(zlicza ilość lini o danym ciągu znaków)"
echo "    *2. By znaleźć LINIĘ z dwoma ciągami znaków(zlicza ilość lini o danym ciągu znaków)"
echo "    *3. Znaleźć PLIKI zawierające dany ciąg znaków w określonym katalogu"
echo "    *4. Wyciągnij LINIE z danego pliku, gdzie występuje więcej kolumn niż"
echo "    *5. Wyświetl określoną ilość LINII"
echo "    *6. Przesortuj LINIĘ i/lub usuń duplikaty"
echo "    *7. Usuń linię."
echo "    *8. Podmień dany ciąg znaków."
echo "    *9. Wstaw na początku lub na końcu linii dany ciąg znaków."
echo "__________________________________________________________"
echo "2. Działania na kolumnach"
echo "	*1. Wyciągnij określone kolumny z pliku"
echo "	*2. Podlicz wartości w danej kolumnie"
echo "		*1. Podlicz wartości z kolumny X"
echo "		*2. Podlicz wartości w kolumnie X przypisane do wartości z Kolumny Y "
echo "		*3. Podlicz wartość w kolumnie X jeśli w kolumnie Y jest ciąg tekstowy XYZ [In Progress]"
echo "__________________________________________________________"
echo "."
echo "."
echo "."
echo "__________________________________________________________"
echo "7. Pozyskaj informację o pliku/zarzadzanie plikiem"
echo "    *1. Poznaj ilość linii/wyrazów/Bajtów"
echo "        **1. Zlicz ilość linii w pliku"
echo "        **2. Zlicz ilość wyrazów w pliku"
echo "        **3. Zlicz ilość znaków/bajtów w pliku"    
echo "    *2. Przejrzyj dany plik"
echo "    *3. Data ostatniej modyfikacji"
echo "__________________________________________________________"

echo "8. Konwersja/dekonwersja/kopiowanie/przenoszenie plików"
echo "    *1. Spakowanie/Rozpakowanie danego pliku."
echo "         **1. Spakowanie danego pliku/katalogu."
echo "         **2. Rozpakowanie danego pliku/katalogu."
echo "    *2. Kopiowanie danego pliku lub katalogu."
echo "         **1. Kopiujemy plik"
echo "         **2. Kopiujemy cały katalogu"
echo "    *3. Przenieś dany plik/katalog(Wytnij->Wklej)."
echo "         **1. Przenieś plik"
echo "         **2. Przenieś cały katalogu"
echo "__________________________________________________________"

echo "9. Nadanie/Edycja praw dostępu do pliku"
echo "    *1. Nadaj/odbierz wszystkie uprawnienia dla wszystkich użytkowników."
echo "         **1. Nadaj Wszystkie uprawnienia"
echo "         **2. Odbierz Wszystkie uprawnienia"
echo "    *2. Nadaj uprawnienia wszystkim użytkownikom"
echo "         **1. Nadaj prawa tylko do odczytu"
echo "         **2. Nadaj prawa tylko do zapisu"
echo "         **3. Nadaj prawa tylko do wykonywania pliku"
echo "         **4. Nadaj prawa tylko do odczytu i zapisu"
echo "         **5. Nadaj prawa tylko do zapisu i wykonywania"
echo "         **6. Nadaj prawa tylko do odczytu i wykonywania"
echo "    *3. Nadaj uprawnienia tylko właścicielowi pliku"
echo "    *4. Nadaj uprawnienia grupie"
echo "		**Tak jak w punkcie 3"
echo "    *5. Nadaj uprawnienia innym"
echo "		**Tak jak w punkcie 3"
echo "__________________________________________________________"

. ./SimpleBashHelper.sh 
}

case "$MAINMENU" in
	"1") FILE_AND_LINES_MENU ;;
	"2") FILE_COLUMN_ACTION ;; 
	"7") FILE_INFO_MENU ;;
	"8") FILE_TAR_MENU ;;
	"9") FILE_ACCESS_RIGHT_MENU ;;
	"INFO") INFO_TREE ;;
	*) echo "TEST"
esac




