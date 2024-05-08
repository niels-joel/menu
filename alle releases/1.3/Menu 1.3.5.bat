(Menu 1.3.5. ©Sem Noah Boven. All rights reserved.)
@echo off
:menu_logo
Title Menu 1.3.5
cls
ping localhost -n 1 >nul
echo.
echo				   M       M          E E E          N     N          U       U
echo				   M M   M M	      E	             N N   N          U       U
echo				   M   M   M	      E E E          N  N  N          U       U	
echo				   M	   M	      E	             N   N N          U       U
echo				   M	   M	      E E E          N     N            U U U
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo   1.3.5                                                                                       Copyright Sem Noah Boven
ping localhost -n 3 >nul
cls
ping localhost -n 2 >nul
goto language_start

:language_start
Title Language
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Choose your language.
echo.
echo 1: Nederlands (Dutch)
echo 2: English
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which language do you choose?:"
if "%input%" == "1" goto password_nl
if "%input%" == "nederlands" goto password_nl
if "%input%" == "Nederlands" goto password_nl
if "%input%" == "NEDERLANDS" goto password_nl
if "%input%" == "dutch" goto password_nl
if "%input%" == "Dutch" goto password_nl
if "%input%" == "DUTCH" goto password_nl
if "%input%" == "2" goto password_en
if "%input%" == "english" goto password_en
if "%input%" == "English" goto password_en
if "%input%" == "ENGLISH" goto password_en
goto language_start_failed

:language_start_failed
Title Language
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Choose your language.
echo.
echo 1: Nederlands (Dutch)
echo 2: English
echo This language does not exist. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which language do you choose?:"
if "%input%" == "1" goto password_nl
if "%input%" == "nederlands" goto password_nl
if "%input%" == "Nederlands" goto password_nl
if "%input%" == "NEDERLANDS" goto password_nl
if "%input%" == "dutch" goto password_nl
if "%input%" == "Dutch" goto password_nl
if "%input%" == "DUTCH" goto password_nl
if "%input%" == "2" goto password_en
if "%input%" == "english" goto password_en
if "%input%" == "English" goto password_en
if "%input%" == "ENGLISH" goto password_en
goto language_start_failed 

:password_nl
Title Wachtwoord
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Voer je wachtwoord in.
echo. 
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Wachtwoord:"
if "%input%" == "0000" goto menu_nl
goto password_nl_failed

:password_nl_failed
Title Wachtwoord
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Voer je wachtwoord in.
echo Fout wachtwoord. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Wachtwoord:"
if "%input%" == "0000" goto menu_nl
goto password_nl_failed

:menu_nl
Title Menu
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Welkom bij het menu.
echo Waar wil je heen gaan?
echo. 
echo 1: Spellen
echo 2: Kladblok
echo 3: Bestandslocatie openen
echo 4: Instellingen
echo 5: Stoppen
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke pagina kies je?:"
if "%input%" == "1" goto games_nl
if "%input%" == "spellen" goto games_nl
if "%input%" == "Spellen" goto games_nl
if "%input%" == "SPELLEN" goto games_nl
if "%input%" == "2" goto notepad_nl
if "%input%" == "kladblok" goto notepad_nl
if "%input%" == "Kladblok" goto notepad_nl
if "%input%" == "KLADBLOK" goto notepad_nl
if "%input%" == "3" goto open_file_location_nl
if "%input%" == "bestandslocatie openen" goto open_file_location_nl
if "%input%" == "Bestandslocatie openen" goto open_file_location_nl
if "%input%" == "Bestandslocatie Openen" goto open_file_location_nl
if "%input%" == "BESTANDSLOCATIE OPENEN" goto open_file_location_nl
if "%input%" == "4" goto settings_nl
if "%input%" == "instellingen" goto settings_nl
if "%input%" == "Instellingen" goto settings_nl
if "%input%" == "INSTELLINGEN" goto settings_nl
if "%input%" == "5" goto exit_nl
if "%input%" == "stoppen" goto exit_nl
if "%input%" == "Stoppen" goto exit_nl
if "%input%" == "STOPPEN" goto exit_nl
goto error_nl

:games_nl
Title Spellen
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Welkom Bij de spellen.
echo Waar wil je heen gaan?
echo.
echo 1: Tic Tac Toe
echo 2: Terug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welk spel kies je?:"
if "%input%" == "1" goto tictactoe_warning_nl
if "%input%" == "tic tac toe" goto tictactoe_warning_nl
if "%input%" == "Tic tac toe" goto tictactoe_warning_nl
if "%input%" == "Tic Tac Toe" goto tictactoe_warning_nl
if "%input%" == "TIC TAC TOE" goto tictactoe_warning_nl
if "%input%" == "2" goto menu_nl
if "%input%" == "terug" goto menu_nl
if "%input%" == "Terug" goto menu_nl
if "%input%" == "TERUG" goto menu_nl
goto error_nl

:tictactoe_warning_nl
Title WAARSCHUWING!
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo WAARSCHUWING!
echo.
echo Dit spel is alleen in het engels te spelen,
echo omdat iemand anders dit heeft gemaakt.
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Wil je het spel alsnog spelen?:"
if "%input%" == "ja" goto start_tictactoe_nl
if "%input%" == "Ja" goto start_tictactoe_nl
if "%input%" == "JA" goto start_tictactoe_nl
if "%input%" == "nee" goto games_nl
if "%input%" == "Nee" goto games_nl
if "%input%" == "NEE" goto games_nl
goto tictactoe_warning_nl_failed

:tictactoe_warning_nl_failed
Title WAARSCHUWING!
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo WAARSCHUWING!
echo.
echo Dit spel is alleen in het engels te spelen,
echo omdat iemand anders dit heeft gemaakt.
echo Sorry, dat is geen antwoord. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Wil je het spel alsnog spelen?:"
if "%input%" == "ja" goto start_tictactoe_nl
if "%input%" == "Ja" goto start_tictactoe_nl
if "%input%" == "JA" goto start_tictactoe_nl
if "%input%" == "nee" goto games_nl
if "%input%" == "Nee" goto games_nl
if "%input%" == "NEE" goto games_nl
goto tictactoe_warning_nl_failed

:start_tictactoe_nl
start cmd /k ".\Tic Tac Toe.bat" & goto games_nl

:notepad_nl
Title Kladblok
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Kladblok
echo Naar welk blad wil je gaan?
echo.
echo 1: %notepad_title_1%
echo 2: %notepad_title_2%
echo 3: %notepad_title_3%
echo 4: Terug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welk blad?:"
if "%input%" == "1" goto notepad_nl_1
if "%input%" == "%notepad_title_1%" goto notepad_nl_1
if "%input%" == "2" goto notepad_nl_2
if "%input%" == "%notepad_title_2%" goto notepad_nl_2
if "%input%" == "3" goto notepad_nl_3
if "%input%" == "%notepad_title_3%" goto notepad_nl_3
if "%input%" == "4" goto menu_nl
if "%input%" == "terug" goto menu_nl
if "%input%" == "Terug" goto menu_nl
if "%input%" == "TERUG" goto menu_nl
goto notepad_nl_failed

:notepad_nl_failed
Title Kladblok
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Kladblok
echo Naar welk blad wil je gaan?
echo.
echo 1: %notepad_title_1%
echo 2: %notepad_title_2%
echo 3: %notepad_title_3%
echo 4: Terug
echo Sorry, dat is geen blad. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welk blad?:"
if "%input%" == "1" goto notepad_nl_1
if "%input%" == "%notepad_title_1%" goto notepad_nl_1
if "%input%" == "2" goto notepad_nl_2
if "%input%" == "%notepad_title_2%" goto notepad_nl_2
if "%input%" == "3" goto notepad_nl_3
if "%input%" == "%notepad_title_3%" goto notepad_nl_3
if "%input%" == "4" goto menu_nl
if "%input%" == "terug" goto menu_nl
if "%input%" == "Terug" goto menu_nl
if "%input%" == "TERUG" goto menu_nl
goto notepad_nl_failed

:notepad_nl_1
if "%notepad_title_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_1_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_2_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_3_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_4_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_5_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_6_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_7_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_8_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_9_1%" == "%empty%" goto notepad_nl_1_edit
if "%notepad_line_10_1%" == "%empty%" goto notepad_nl_1_edit
Title %notepad_title_1%
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo %notepad_title_1%
echo.
echo %notepad_line_1_1%
echo %notepad_line_2_1%
echo %notepad_line_3_1%
echo %notepad_line_4_1%
echo %notepad_line_5_1%
echo %notepad_line_6_1%
echo %notepad_line_7_1%
echo %notepad_line_8_1%
echo %notepad_line_9_1%
echo %notepad_line_10_1%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Bewerken: 1                               Terug: 2
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Invoer:"
if "%input%" == "1" goto notepad_nl_1_edit
if "%input%" == "bewerken" goto notepad_nl_1_edit
if "%input%" == "Bewerken" goto notepad_nl_1_edit
if "%input%" == "BEWERKEN" goto notepad_nl_1_edit
if "%input%" == "2" goto notepad_nl
if "%input%" == "terug" goto notepad_nl
if "%input%" == "Terug" goto notepad_nl
if "%input%" == "TERUG" goto notepad_nl
goto notepad_nl_1

:notepad_nl_1_edit
Title %notepad_title_1% Bewerken
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_title_1="Titel hier: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_line_1_1="Regel 01: "
set /p notepad_line_2_1="Regel 02: "
set /p notepad_line_3_1="Regel 03: "
set /p notepad_line_4_1="Regel 04: "
set /p notepad_line_5_1="Regel 05: "
set /p notepad_line_6_1="Regel 06: "
set /p notepad_line_7_1="Regel 07: "
set /p notepad_line_8_1="Regel 08: "
set /p notepad_line_9_1="Regel 09: "
set /p notepad_line_10_1="Regel 10: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Terug: 1
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Invoer:"
if "%input%" == "1" goto notepad_nl_1
if "%input%" == "terug" goto notepad_nl_1
if "%input%" == "Terug" goto notepad_nl_1
if "%input%" == "TERUG" goto notepad_nl_1
goto notepad_nl_1_edit

:notepad_nl_2
if "%notepad_title_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_1_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_2_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_3_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_4_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_5_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_6_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_7_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_8_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_9_2%" == "%empty%" goto notepad_nl_2_edit
if "%notepad_line_10_2%" == "%empty%" goto notepad_nl_2_edit
Title %notepad_title_2%
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo %notepad_title_2%
echo.
echo %notepad_line_1_2%
echo %notepad_line_2_2%
echo %notepad_line_3_2%
echo %notepad_line_4_2%
echo %notepad_line_5_2%
echo %notepad_line_6_2%
echo %notepad_line_7_2%
echo %notepad_line_8_2%
echo %notepad_line_9_2%
echo %notepad_line_10_2%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Bewerken: 1                               Terug: 2
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Invoer:"
if "%input%" == "1" goto notepad_nl_2_edit
if "%input%" == "bewerken" goto notepad_nl_2_edit
if "%input%" == "Bewerken" goto notepad_nl_2_edit
if "%input%" == "BEWERKEN" goto notepad_nl_2_edit
if "%input%" == "2" goto notepad_nl
if "%input%" == "terug" goto notepad_nl
if "%input%" == "Terug" goto notepad_nl
if "%input%" == "TERUG" goto notepad_nl
goto notepad_nl_2

:notepad_nl_2_edit
Title %notepad_title_2% Bewerken
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_title_2="Titel hier: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_line_1_2="Regel 01: "
set /p notepad_line_2_2="Regel 02: "
set /p notepad_line_3_2="Regel 03: "
set /p notepad_line_4_2="Regel 04: "
set /p notepad_line_5_2="Regel 05: "
set /p notepad_line_6_2="Regel 06: "
set /p notepad_line_7_2="Regel 07: "
set /p notepad_line_8_2="Regel 08: "
set /p notepad_line_9_2="Regel 09: "
set /p notepad_line_10_2="Regel 10: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Terug: 1
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Invoer:"
if "%input%" == "1" goto notepad_nl_2
if "%input%" == "terug" goto notepad_nl_2
if "%input%" == "Terug" goto notepad_nl_2
if "%input%" == "TERUG" goto notepad_nl_2
goto notepad_nl_2_edit

:notepad_nl_3
if "%notepad_title_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_1_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_2_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_3_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_4_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_5_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_6_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_7_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_8_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_9_3%" == "%empty%" goto notepad_nl_3_edit
if "%notepad_line_10_3%" == "%empty%" goto notepad_nl_3_edit
Title %notepad_title_3%
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo %notepad_title_3%
echo.
echo %notepad_line_1_3%
echo %notepad_line_2_3%
echo %notepad_line_3_3%
echo %notepad_line_4_3%
echo %notepad_line_5_3%
echo %notepad_line_6_3%
echo %notepad_line_7_3%
echo %notepad_line_8_3%
echo %notepad_line_9_3%
echo %notepad_line_10_3%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Bewerken: 1                               Terug: 2
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Invoer:"
if "%input%" == "1" goto notepad_nl_3_edit
if "%input%" == "bewerken" goto notepad_nl_3_edit
if "%input%" == "Bewerken" goto notepad_nl_3_edit
if "%input%" == "BEWERKEN" goto notepad_nl_3_edit
if "%input%" == "2" goto notepad_nl
if "%input%" == "terug" goto notepad_nl
if "%input%" == "Terug" goto notepad_nl
if "%input%" == "TERUG" goto notepad_nl
goto notepad_nl_3

:notepad_nl_3_edit
Title %notepad_title_3% Bewerken
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_title_3="Titel hier: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_line_1_3="Regel 01: "
set /p notepad_line_2_3="Regel 02: "
set /p notepad_line_3_3="Regel 03: "
set /p notepad_line_4_3="Regel 04: "
set /p notepad_line_5_3="Regel 05: "
set /p notepad_line_6_3="Regel 06: "
set /p notepad_line_7_3="Regel 07: "
set /p notepad_line_8_3="Regel 08: "
set /p notepad_line_9_3="Regel 09: "
set /p notepad_line_10_3="Regel 10: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Terug: 1
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Invoer:"
if "%input%" == "1" goto notepad_nl_3
if "%input%" == "terug" goto notepad_nl_3
if "%input%" == "Terug" goto notepad_nl_3
if "%input%" == "TERUG" goto notepad_nl_3
goto notepad_nl_3_edit

:open_file_location_nl
Title Bestandslocatie openen
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Bestandslocatie openen
echo Wil je een locatie openen of naar verkenner gaan?
echo.
echo 1: Locatie openen
echo 2: Verkenner
echo 3: Terug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Locatie openen of verkenner?:"
if "%input%" == "1" goto open_file_location_nl_open_location
if "%input%" == "locatie openen" goto open_file_location_nl_open_location
if "%input%" == "Locatie openen" goto open_file_location_nl_open_location
if "%input%" == "Locatie Openen" goto open_file_location_nl_open_location
if "%input%" == "LOCATIE OPENEN" goto open_file_location_nl_open_location
if "%input%" == "2" explorer & goto open_file_location_nl
if "%input%" == "verkenner" explorer & goto open_file_location_nl
if "%input%" == "Verkenner" explorer & goto open_file_location_nl
if "%input%" == "VERKENNER" explorer & goto open_file_location_nl
if "%input%" == "3" goto menu_nl
if "%input%" == "terug" goto menu_nl
if "%input%" == "Terug" goto menu_nl
if "%input%" == "TERUG" goto menu_nl
goto open_file_location_nl_failed

:open_file_location_nl_failed
Title Bestandslocatie openen
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Bestandslocatie openen
echo Wil je een locatie openen of naar verkenner gaan?
echo.
echo 1: Locatie openen
echo 2: Verkenner
echo 3: Terug
echo Sorry, dat is geen optie. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Locatie openen of verkenner?:"
if "%input%" == "1" goto open_file_location_nl_open_location
if "%input%" == "locatie openen" goto open_file_location_nl_open_location
if "%input%" == "Locatie openen" goto open_file_location_nl_open_location
if "%input%" == "Locatie Openen" goto open_file_location_nl_open_location
if "%input%" == "LOCATIE OPENEN" goto open_file_location_nl_open_location
if "%input%" == "2" explorer & goto open_file_location_nl
if "%input%" == "verkenner" explorer & goto open_file_location_nl
if "%input%" == "Verkenner" explorer & goto open_file_location_nl
if "%input%" == "VERKENNER" explorer & goto open_file_location_nl
if "%input%" == "3" goto menu_nl
if "%input%" == "terug" goto menu_nl
if "%input%" == "Terug" goto menu_nl
if "%input%" == "TERUG" goto menu_nl
goto open_file_location_nl_failed

:open_file_location_nl_open_location
Title Locatie openen
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Locatie openen
echo.
echo Vul de locatie in.
echo Je gaat automatisch terug als je iets invult.
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p location="Vul in:"
explorer "%location%" & goto open_file_location_nl

:settings_nl
Title Instellingen
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Instellingen
echo.
echo 1: Taal
echo 2: Kleuren
echo 3: Versie-informatie
echo 4: Terug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke pagina kies je?:"
if "%input%" == "4" goto menu_nl
if "%input%" == "terug" goto menu_nl
if "%input%" == "Terug" goto menu_nl
if "%input%" == "TERUG" goto menu_nl
if "%input%" == "1" goto language_nl
if "%input%" == "taal" goto language_nl
if "%input%" == "Taal" goto language_nl
if "%input%" == "TAAL" goto language_nl
if "%input%" == "2" goto colors_nl
if "%input%" == "kleuren" goto colors_nl
if "%input%" == "Kleuren" goto colors_nl
if "%input%" == "KLEUREN" goto colors_nl
if "%input%" == "3" goto version_information_nl
if "%input%" == "versie-informatie" goto version_information_nl
if "%input%" == "Versie-informatie" goto version_information_nl
if "%input%" == "Versie-Informatie" goto version_information_nl
if "%input%" == "VERSIE-INFORMATIE" goto version_information_nl
goto error_nl

:language_nl
Title Taal
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Kies je taal.
echo.
echo 1: Nederlands
echo 2: English (Engels)
echo 3: Terug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke taal kies je?:"
if "%input%" == "3" goto settings_nl
if "%input%" == "terug" goto settings_nl
if "%input%" == "Terug" goto settings_nl
if "%input%" == "TERUG" goto settings_nl
if "%input%" == "1" goto language_nl
if "%input%" == "nederlands" goto language_nl
if "%input%" == "Nederlands" goto language_nl
if "%input%" == "NEDERLANDS" goto language_nl
if "%input%" == "2" goto language_en
if "%input%" == "english" goto language_en
if "%input%" == "English" goto language_en
if "%input%" == "ENGLISH" goto language_en
if "%input%" == "engels" goto language_en
if "%input%" == "Engels" goto language_en
if "%input%" == "ENGELS" goto language_en
goto language_nl_failed

:language_nl_failed
Title Taal
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Kies je taal.
echo.
echo 1: Nederlands
echo 2: English (Engels)
echo 3: Terug
echo Deze taal bestaat niet. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke taal kies je?:"
if "%input%" == "3" goto settings_nl
if "%input%" == "terug" goto settings_nl
if "%input%" == "Terug" goto settings_nl
if "%input%" == "TERUG" goto settings_nl
if "%input%" == "1" goto language_nl
if "%input%" == "nederlands" goto language_nl
if "%input%" == "Nederlands" goto language_nl
if "%input%" == "NEDERLANDS" goto language_nl
if "%input%" == "2" goto language_en
if "%input%" == "english" goto language_en
if "%input%" == "English" goto language_en
if "%input%" == "ENGLISH" goto language_en
if "%input%" == "engels" goto language_en
if "%input%" == "Engels" goto language_en
if "%input%" == "ENGELS" goto language_en
goto language_nl_failed

:colors_nl
Title Kleuren
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Kies je kleuren.
echo De eerste kleur is de tekst
echo en de tweede kleur is de achtergrond.
echo Bijvoorbeeld: '1-7' of 'Rood-Zwart.'
echo.
echo 1: Rood
echo 2: Geel
echo 3: Groen
echo 4: Blauw
echo 5: Wit
echo 6: Grijs
echo 7: Zwart
echo 8: Terug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke twee kleuren kies je?:"
if "%input%" == "1-1" goto colors_same_nl
if "%input%" == "rood-rood" goto colors_same_nl
if "%input%" == "Rood-rood" goto colors_same_nl
if "%input%" == "Rood-Rood" goto colors_same_nl
if "%input%" == "ROOD-ROOD" goto colors_same_nl
if "%input%" == "1-2" color 64
if "%input%" == "rood-geel" color 64
if "%input%" == "Rood-geel" color 64
if "%input%" == "Rood-Geel" color 64
if "%input%" == "ROOD-GEEL" color 64
if "%input%" == "1-3" color 24
if "%input%" == "rood-groen" color 24
if "%input%" == "Rood-groen" color 24
if "%input%" == "Rood-Groen" color 24
if "%input%" == "ROOD-GROEN" color 24
if "%input%" == "1-4" color 14
if "%input%" == "rood-blauw" color 14
if "%input%" == "Rood-blauw" color 14
if "%input%" == "Rood-Blauw" color 14
if "%input%" == "ROOD-BLAUW" color 14
if "%input%" == "1-5" color 74
if "%input%" == "rood-wit" color 74
if "%input%" == "Rood-wit" color 74
if "%input%" == "Rood-Wit" color 74
if "%input%" == "ROOD-WIT" color 74
if "%input%" == "1-6" color 84
if "%input%" == "rood-grijs" color 84
if "%input%" == "Rood-grijs" color 84
if "%input%" == "Rood-Grijs" color 84
if "%input%" == "ROOD-GRIJS" color 84
if "%input%" == "1-7" color 04
if "%input%" == "rood-zwart" color 04
if "%input%" == "Rood-zwart" color 04
if "%input%" == "Rood-Zwart" color 04
if "%input%" == "ROOD-ZWART" color 04
if "%input%" == "2-1" color 46
if "%input%" == "geel-rood" color 46
if "%input%" == "Geel-rood" color 46
if "%input%" == "Geel-Rood" color 46
if "%input%" == "GEEL-ROOD" color 46
if "%input%" == "2-2" goto colors_same_nl
if "%input%" == "geel-geel" goto colors_same_nl
if "%input%" == "Geel-geel" goto colors_same_nl
if "%input%" == "Geel-Geel" goto colors_same_nl
if "%input%" == "GEEL-GEEL" goto colors_same_nl
if "%input%" == "2-3" color 26
if "%input%" == "geel-groen" color 26
if "%input%" == "Geel-groen" color 26
if "%input%" == "Geel-Groen" color 26
if "%input%" == "GEEL-GROEN" color 26
if "%input%" == "2-4" color 16
if "%input%" == "geel-blauw" color 16
if "%input%" == "Geel-blauw" color 16
if "%input%" == "Geel-Blauw" color 16
if "%input%" == "GEEL-BLAUW" color 16
if "%input%" == "2-5" color 76
if "%input%" == "geel-wit" color 76
if "%input%" == "Geel-wit" color 76
if "%input%" == "Geel-Wit" color 76
if "%input%" == "GEEL-WIT" color 76
if "%input%" == "2-6" color 86
if "%input%" == "geel-grijs" color 86
if "%input%" == "Geel-grijs" color 86
if "%input%" == "Geel-Grijs" color 86
if "%input%" == "GEEL-GRIJS" color 86
if "%input%" == "2-7" color 06
if "%input%" == "geel-zwart" color 06
if "%input%" == "Geel-zwart" color 06
if "%input%" == "Geel-Zwart" color 06
if "%input%" == "GEEL-ZWART" color 06
if "%input%" == "3-1" color 42
if "%input%" == "groen-rood" color 42
if "%input%" == "Groen-rood" color 42
if "%input%" == "Groen-Rood" color 42
if "%input%" == "GROEN-ROOD" color 42
if "%input%" == "3-2" color 62
if "%input%" == "groen-geel" color 62
if "%input%" == "Groen-geel" color 62
if "%input%" == "Groen-Geel" color 62
if "%input%" == "GROEN-GEEL" color 62
if "%input%" == "3-3" goto colors_same_nl
if "%input%" == "groen-groen" goto colors_same_nl
if "%input%" == "Groen-groen" goto colors_same_nl
if "%input%" == "Groen-Groen" goto colors_same_nl
if "%input%" == "GROEN-GROEN" goto colors_same_nl
if "%input%" == "3-4" color 12
if "%input%" == "groen-blauw" color 12
if "%input%" == "Groen-blauw" color 12
if "%input%" == "Groen-Blauw" color 12
if "%input%" == "GROEN-BLAUW" color 12
if "%input%" == "3-5" color 72
if "%input%" == "groen-wit" color 72
if "%input%" == "Groen-wit" color 72
if "%input%" == "Groen-Wit" color 72
if "%input%" == "GROEN-WIT" color 72
if "%input%" == "3-6" color 82
if "%input%" == "groen-grijs" color 82
if "%input%" == "Groen-grijs" color 82
if "%input%" == "Groen-Grijs" color 82
if "%input%" == "GROEN-GRIJS" color 82
if "%input%" == "3-7" color 02
if "%input%" == "groen-zwart" color 02
if "%input%" == "Groen-zwart" color 02
if "%input%" == "Groen-Zwart" color 02
if "%input%" == "GROEN-ZWART" color 02
if "%input%" == "4-1" color 41
if "%input%" == "blauw-rood" color 41
if "%input%" == "Blauw-rood" color 41
if "%input%" == "Blauw-Rood" color 41
if "%input%" == "BLAUW-ROOD" color 41
if "%input%" == "4-2" color 61
if "%input%" == "blauw-geel" color 61
if "%input%" == "Blauw-geel" color 61
if "%input%" == "Blauw-Geel" color 61
if "%input%" == "BLAUW-GEEL" color 61
if "%input%" == "4-3" color 21
if "%input%" == "blauw-groen" color 21
if "%input%" == "Blauw-groen" color 21
if "%input%" == "Blauw-Groen" color 21
if "%input%" == "BLAUW-GROEN" color 21
if "%input%" == "4-4" goto colors_same_nl
if "%input%" == "blauw-blauw" goto colors_same_nl
if "%input%" == "Blauw-blauw" goto colors_same_nl
if "%input%" == "Blauw-Blauw" goto colors_same_nl
if "%input%" == "BLAUW-BLAUW" goto colors_same_nl
if "%input%" == "4-5" color 71
if "%input%" == "blauw-wit" color 71
if "%input%" == "Blauw-wit" color 71
if "%input%" == "Blauw-Wit" color 71
if "%input%" == "BLAUW-WIT" color 71
if "%input%" == "4-6" color 81
if "%input%" == "blauw-grijs" color 81
if "%input%" == "Blauw-grijs" color 81
if "%input%" == "Blauw-Grijs" color 81
if "%input%" == "BLAUW-GRIJS" color 81
if "%input%" == "4-7" color 01
if "%input%" == "blauw-zwart" color 01
if "%input%" == "Blauw-zwart" color 01
if "%input%" == "Blauw-Zwart" color 01
if "%input%" == "BLAUW-ZWART" color 01
if "%input%" == "5-1" color 47
if "%input%" == "wit-rood" color 47
if "%input%" == "Wit-rood" color 47
if "%input%" == "Wit-Rood" color 47
if "%input%" == "WIT-ROOD" color 47
if "%input%" == "5-2" color 67
if "%input%" == "wit-geel" color 67
if "%input%" == "Wit-geel" color 67
if "%input%" == "Wit-Geel" color 67
if "%input%" == "WIT-GEEL" color 67
if "%input%" == "5-3" color 27
if "%input%" == "wit-groen" color 27
if "%input%" == "Wit-groen" color 27
if "%input%" == "Wit-Groen" color 27
if "%input%" == "WIT-GROEN" color 27
if "%input%" == "5-4" color 17
if "%input%" == "wit-blauw" color 17
if "%input%" == "Wit-blauw" color 17
if "%input%" == "Wit-Blauw" color 17
if "%input%" == "WIT-BLAUW" color 17
if "%input%" == "5-5" goto colors_same_nl
if "%input%" == "wit-wit" goto colors_same_nl
if "%input%" == "Wit-wit" goto colors_same_nl
if "%input%" == "Wit-Wit" goto colors_same_nl
if "%input%" == "WIT-WIT" goto colors_same_nl
if "%input%" == "5-6" color 87
if "%input%" == "wit-grijs" color 87
if "%input%" == "Wit-grijs" color 87
if "%input%" == "Wit-Grijs" color 87
if "%input%" == "WIT-GRIJS" color 87
if "%input%" == "5-7" color 07
if "%input%" == "wit-zwart" color 07
if "%input%" == "Wit-zwart" color 07
if "%input%" == "Wit-Zwart" color 07
if "%input%" == "WIT-ZWART" color 07
if "%input%" == "6-1" color 48
if "%input%" == "grijs-rood" color 48
if "%input%" == "Grijs-rood" color 48
if "%input%" == "Grijs-Rood" color 48
if "%input%" == "GRIJS-ROOD" color 48
if "%input%" == "6-2" color 68
if "%input%" == "grijs-geel" color 68
if "%input%" == "Grijs-geel" color 68
if "%input%" == "Grijs-Geel" color 68
if "%input%" == "GRIJS-GEEL" color 68
if "%input%" == "6-3" color 28
if "%input%" == "grijs-groen" color 28
if "%input%" == "Grijs-groen" color 28
if "%input%" == "Grijs-Groen" color 28
if "%input%" == "GRIJS-GROEN" color 28
if "%input%" == "6-4" color 18
if "%input%" == "grijs-blauw" color 18
if "%input%" == "Grijs-blauw" color 18
if "%input%" == "Grijs-Blauw" color 18
if "%input%" == "GRIJS-BLAUW" color 18
if "%input%" == "6-5" color 78
if "%input%" == "grijs-wit" color 78
if "%input%" == "Grijs-wit" color 78
if "%input%" == "Grijs-Wit" color 78
if "%input%" == "GRIJS-WIT" color 78
if "%input%" == "6-6" goto colors_same_nl
if "%input%" == "grijs-grijs" goto colors_same_nl
if "%input%" == "Grijs-grijs" goto colors_same_nl
if "%input%" == "Grijs-Grijs" goto colors_same_nl
if "%input%" == "GRIJS-GRIJS" goto colors_same_nl
if "%input%" == "6-7" color 08
if "%input%" == "grijs-zwart" color 08
if "%input%" == "Grijs-zwart" color 08
if "%input%" == "Grijs-Zwart" color 08
if "%input%" == "GRIJS-ZWART" color 08
if "%input%" == "7-1" color 40
if "%input%" == "zwart-rood" color 40
if "%input%" == "Zwart-rood" color 40
if "%input%" == "Zwart-Rood" color 40
if "%input%" == "ZWART-ROOD" color 40
if "%input%" == "7-2" color 60
if "%input%" == "zwart-geel" color 60
if "%input%" == "Zwart-geel" color 60
if "%input%" == "Zwart-Geel" color 60
if "%input%" == "ZWART-GEEL" color 60
if "%input%" == "7-3" color 20
if "%input%" == "zwart-groen" color 20
if "%input%" == "Zwart-groen" color 20
if "%input%" == "Zwart-Groen" color 20
if "%input%" == "ZWART-GROEN" color 20
if "%input%" == "7-4" color 10
if "%input%" == "zwart-blauw" color 10
if "%input%" == "Zwart-blauw" color 10
if "%input%" == "Zwart-Blauw" color 10
if "%input%" == "ZWART-BLAUW" color 10
if "%input%" == "7-5" color 70
if "%input%" == "zwart-wit" color 70
if "%input%" == "Zwart-wit" color 70
if "%input%" == "Zwart-Wit" color 70
if "%input%" == "ZWART-WIT" color 70
if "%input%" == "7-6" color 80
if "%input%" == "zwart-grijs" color 80
if "%input%" == "Zwart-grijs" color 80
if "%input%" == "Zwart-Grijs" color 80
if "%input%" == "ZWART-GRIJS" color 80
if "%input%" == "7-7" goto colors_same_nl
if "%input%" == "zwart-zwart" goto colors_same_nl
if "%input%" == "Zwart-zwart" goto colors_same_nl
if "%input%" == "Zwart-Zwart" goto colors_same_nl
if "%input%" == "ZWART-ZWART" goto colors_same_nl
if "%input%" == "8" goto settings_nl
if "%input%" == "terug" goto settings_nl
if "%input%" == "Terug" goto settings_nl
if "%input%" == "TERUG" goto settings_nl
goto colors_nl

:colors_same_nl
Title Kleuren
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Kies je kleuren.
echo De eerste kleur is de tekst
echo en de tweede kleur is de achtergrond.
echo Bijvoorbeeld: '1-7' of 'Rood-Zwart.'
echo.
echo 1: Rood
echo 2: Geel
echo 3: Groen
echo 4: Blauw
echo 5: Wit
echo 6: Grijs
echo 7: Zwart
echo 8: Terug
echo Sorry, dat kan niet. Probeer opnieuw. 
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke twee kleuren kies je?:"
if "%input%" == "1-1" goto colors_same_nl
if "%input%" == "rood-rood" goto colors_same_nl
if "%input%" == "Rood-rood" goto colors_same_nl
if "%input%" == "Rood-Rood" goto colors_same_nl
if "%input%" == "ROOD-ROOD" goto colors_same_nl
if "%input%" == "1-2" color 64
if "%input%" == "rood-geel" color 64
if "%input%" == "Rood-geel" color 64
if "%input%" == "Rood-Geel" color 64
if "%input%" == "ROOD-GEEL" color 64
if "%input%" == "1-3" color 24
if "%input%" == "rood-groen" color 24
if "%input%" == "Rood-groen" color 24
if "%input%" == "Rood-Groen" color 24
if "%input%" == "ROOD-GROEN" color 24
if "%input%" == "1-4" color 14
if "%input%" == "rood-blauw" color 14
if "%input%" == "Rood-blauw" color 14
if "%input%" == "Rood-Blauw" color 14
if "%input%" == "ROOD-BLAUW" color 14
if "%input%" == "1-5" color 74
if "%input%" == "rood-wit" color 74
if "%input%" == "Rood-wit" color 74
if "%input%" == "Rood-Wit" color 74
if "%input%" == "ROOD-WIT" color 74
if "%input%" == "1-6" color 84
if "%input%" == "rood-grijs" color 84
if "%input%" == "Rood-grijs" color 84
if "%input%" == "Rood-Grijs" color 84
if "%input%" == "ROOD-GRIJS" color 84
if "%input%" == "1-7" color 04
if "%input%" == "rood-zwart" color 04
if "%input%" == "Rood-zwart" color 04
if "%input%" == "Rood-Zwart" color 04
if "%input%" == "ROOD-ZWART" color 04
if "%input%" == "2-1" color 46
if "%input%" == "geel-rood" color 46
if "%input%" == "Geel-rood" color 46
if "%input%" == "Geel-Rood" color 46
if "%input%" == "GEEL-ROOD" color 46
if "%input%" == "2-2" goto colors_same_nl
if "%input%" == "geel-geel" goto colors_same_nl
if "%input%" == "Geel-geel" goto colors_same_nl
if "%input%" == "Geel-Geel" goto colors_same_nl
if "%input%" == "GEEL-GEEL" goto colors_same_nl
if "%input%" == "2-3" color 26
if "%input%" == "geel-groen" color 26
if "%input%" == "Geel-groen" color 26
if "%input%" == "Geel-Groen" color 26
if "%input%" == "GEEL-GROEN" color 26
if "%input%" == "2-4" color 16
if "%input%" == "geel-blauw" color 16
if "%input%" == "Geel-blauw" color 16
if "%input%" == "Geel-Blauw" color 16
if "%input%" == "GEEL-BLAUW" color 16
if "%input%" == "2-5" color 76
if "%input%" == "geel-wit" color 76
if "%input%" == "Geel-wit" color 76
if "%input%" == "Geel-Wit" color 76
if "%input%" == "GEEL-WIT" color 76
if "%input%" == "2-6" color 86
if "%input%" == "geel-grijs" color 86
if "%input%" == "Geel-grijs" color 86
if "%input%" == "Geel-Grijs" color 86
if "%input%" == "GEEL-GRIJS" color 86
if "%input%" == "2-7" color 06
if "%input%" == "geel-zwart" color 06
if "%input%" == "Geel-zwart" color 06
if "%input%" == "Geel-Zwart" color 06
if "%input%" == "GEEL-ZWART" color 06
if "%input%" == "3-1" color 42
if "%input%" == "groen-rood" color 42
if "%input%" == "Groen-rood" color 42
if "%input%" == "Groen-Rood" color 42
if "%input%" == "GROEN-ROOD" color 42
if "%input%" == "3-2" color 62
if "%input%" == "groen-geel" color 62
if "%input%" == "Groen-geel" color 62
if "%input%" == "Groen-Geel" color 62
if "%input%" == "GROEN-GEEL" color 62
if "%input%" == "3-3" goto colors_same_nl
if "%input%" == "groen-groen" goto colors_same_nl
if "%input%" == "Groen-groen" goto colors_same_nl
if "%input%" == "Groen-Groen" goto colors_same_nl
if "%input%" == "GROEN-GROEN" goto colors_same_nl
if "%input%" == "3-4" color 12
if "%input%" == "groen-blauw" color 12
if "%input%" == "Groen-blauw" color 12
if "%input%" == "Groen-Blauw" color 12
if "%input%" == "GROEN-BLAUW" color 12
if "%input%" == "3-5" color 72
if "%input%" == "groen-wit" color 72
if "%input%" == "Groen-wit" color 72
if "%input%" == "Groen-Wit" color 72
if "%input%" == "GROEN-WIT" color 72
if "%input%" == "3-6" color 82
if "%input%" == "groen-grijs" color 82
if "%input%" == "Groen-grijs" color 82
if "%input%" == "Groen-Grijs" color 82
if "%input%" == "GROEN-GRIJS" color 82
if "%input%" == "3-7" color 02
if "%input%" == "groen-zwart" color 02
if "%input%" == "Groen-zwart" color 02
if "%input%" == "Groen-Zwart" color 02
if "%input%" == "GROEN-ZWART" color 02
if "%input%" == "4-1" color 41
if "%input%" == "blauw-rood" color 41
if "%input%" == "Blauw-rood" color 41
if "%input%" == "Blauw-Rood" color 41
if "%input%" == "BLAUW-ROOD" color 41
if "%input%" == "4-2" color 61
if "%input%" == "blauw-geel" color 61
if "%input%" == "Blauw-geel" color 61
if "%input%" == "Blauw-Geel" color 61
if "%input%" == "BLAUW-GEEL" color 61
if "%input%" == "4-3" color 21
if "%input%" == "blauw-groen" color 21
if "%input%" == "Blauw-groen" color 21
if "%input%" == "Blauw-Groen" color 21
if "%input%" == "BLAUW-GROEN" color 21
if "%input%" == "4-4" goto colors_same_nl
if "%input%" == "blauw-blauw" goto colors_same_nl
if "%input%" == "Blauw-blauw" goto colors_same_nl
if "%input%" == "Blauw-Blauw" goto colors_same_nl
if "%input%" == "BLAUW-BLAUW" goto colors_same_nl
if "%input%" == "4-5" color 71
if "%input%" == "blauw-wit" color 71
if "%input%" == "Blauw-wit" color 71
if "%input%" == "Blauw-Wit" color 71
if "%input%" == "BLAUW-WIT" color 71
if "%input%" == "4-6" color 81
if "%input%" == "blauw-grijs" color 81
if "%input%" == "Blauw-grijs" color 81
if "%input%" == "Blauw-Grijs" color 81
if "%input%" == "BLAUW-GRIJS" color 81
if "%input%" == "4-7" color 01
if "%input%" == "blauw-zwart" color 01
if "%input%" == "Blauw-zwart" color 01
if "%input%" == "Blauw-Zwart" color 01
if "%input%" == "BLAUW-ZWART" color 01
if "%input%" == "5-1" color 47
if "%input%" == "wit-rood" color 47
if "%input%" == "Wit-rood" color 47
if "%input%" == "Wit-Rood" color 47
if "%input%" == "WIT-ROOD" color 47
if "%input%" == "5-2" color 67
if "%input%" == "wit-geel" color 67
if "%input%" == "Wit-geel" color 67
if "%input%" == "Wit-Geel" color 67
if "%input%" == "WIT-GEEL" color 67
if "%input%" == "5-3" color 27
if "%input%" == "wit-groen" color 27
if "%input%" == "Wit-groen" color 27
if "%input%" == "Wit-Groen" color 27
if "%input%" == "WIT-GROEN" color 27
if "%input%" == "5-4" color 17
if "%input%" == "wit-blauw" color 17
if "%input%" == "Wit-blauw" color 17
if "%input%" == "Wit-Blauw" color 17
if "%input%" == "WIT-BLAUW" color 17
if "%input%" == "5-5" goto colors_same_nl
if "%input%" == "wit-wit" goto colors_same_nl
if "%input%" == "Wit-wit" goto colors_same_nl
if "%input%" == "Wit-Wit" goto colors_same_nl
if "%input%" == "WIT-WIT" goto colors_same_nl
if "%input%" == "5-6" color 87
if "%input%" == "wit-grijs" color 87
if "%input%" == "Wit-grijs" color 87
if "%input%" == "Wit-Grijs" color 87
if "%input%" == "WIT-GRIJS" color 87
if "%input%" == "5-7" color 07
if "%input%" == "wit-zwart" color 07
if "%input%" == "Wit-zwart" color 07
if "%input%" == "Wit-Zwart" color 07
if "%input%" == "WIT-ZWART" color 07
if "%input%" == "6-1" color 48
if "%input%" == "grijs-rood" color 48
if "%input%" == "Grijs-rood" color 48
if "%input%" == "Grijs-Rood" color 48
if "%input%" == "GRIJS-ROOD" color 48
if "%input%" == "6-2" color 68
if "%input%" == "grijs-geel" color 68
if "%input%" == "Grijs-geel" color 68
if "%input%" == "Grijs-Geel" color 68
if "%input%" == "GRIJS-GEEL" color 68
if "%input%" == "6-3" color 28
if "%input%" == "grijs-groen" color 28
if "%input%" == "Grijs-groen" color 28
if "%input%" == "Grijs-Groen" color 28
if "%input%" == "GRIJS-GROEN" color 28
if "%input%" == "6-4" color 18
if "%input%" == "grijs-blauw" color 18
if "%input%" == "Grijs-blauw" color 18
if "%input%" == "Grijs-Blauw" color 18
if "%input%" == "GRIJS-BLAUW" color 18
if "%input%" == "6-5" color 78
if "%input%" == "grijs-wit" color 78
if "%input%" == "Grijs-wit" color 78
if "%input%" == "Grijs-Wit" color 78
if "%input%" == "GRIJS-WIT" color 78
if "%input%" == "6-6" goto colors_same_nl
if "%input%" == "grijs-grijs" goto colors_same_nl
if "%input%" == "Grijs-grijs" goto colors_same_nl
if "%input%" == "Grijs-Grijs" goto colors_same_nl
if "%input%" == "GRIJS-GRIJS" goto colors_same_nl
if "%input%" == "6-7" color 08
if "%input%" == "grijs-zwart" color 08
if "%input%" == "Grijs-zwart" color 08
if "%input%" == "Grijs-Zwart" color 08
if "%input%" == "GRIJS-ZWART" color 08
if "%input%" == "7-1" color 40
if "%input%" == "zwart-rood" color 40
if "%input%" == "Zwart-rood" color 40
if "%input%" == "Zwart-Rood" color 40
if "%input%" == "ZWART-ROOD" color 40
if "%input%" == "7-2" color 60
if "%input%" == "zwart-geel" color 60
if "%input%" == "Zwart-geel" color 60
if "%input%" == "Zwart-Geel" color 60
if "%input%" == "ZWART-GEEL" color 60
if "%input%" == "7-3" color 20
if "%input%" == "zwart-groen" color 20
if "%input%" == "Zwart-groen" color 20
if "%input%" == "Zwart-Groen" color 20
if "%input%" == "ZWART-GROEN" color 20
if "%input%" == "7-4" color 10
if "%input%" == "zwart-blauw" color 10
if "%input%" == "Zwart-blauw" color 10
if "%input%" == "Zwart-Blauw" color 10
if "%input%" == "ZWART-BLAUW" color 10
if "%input%" == "7-5" color 70
if "%input%" == "zwart-wit" color 70
if "%input%" == "Zwart-wit" color 70
if "%input%" == "Zwart-Wit" color 70
if "%input%" == "ZWART-WIT" color 70
if "%input%" == "7-6" color 80
if "%input%" == "zwart-grijs" color 80
if "%input%" == "Zwart-grijs" color 80
if "%input%" == "Zwart-Grijs" color 80
if "%input%" == "ZWART-GRIJS" color 80
if "%input%" == "7-7" goto colors_same_nl
if "%input%" == "zwart-zwart" goto colors_same_nl
if "%input%" == "Zwart-zwart" goto colors_same_nl
if "%input%" == "Zwart-Zwart" goto colors_same_nl
if "%input%" == "ZWART-ZWART" goto colors_same_nl
if "%input%" == "8" goto settings_nl
if "%input%" == "terug" goto settings_nl
if "%input%" == "Terug" goto settings_nl
if "%input%" == "TERUG" goto settings_nl
goto colors_nl

:version_information_nl
Title Versie-informatie
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Versie-informatie
echo.
echo Versie: 1.3.5
echo Platform: Windows
echo Release datum: 7-5-2024
echo Gemaakt door: Sem Boven
echo.
echo Update-informatie:
echo Gefixte bug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Wil je terug?:"
if "%input%" == "ja" goto settings_nl
if "%input%" == "Ja" goto settings_nl
if "%input%" == "JA" goto settings_nl
if "%input%" == "nee" goto version_information_nl
if "%input%" == "Nee" goto version_information_nl
if "%input%" == "NEE" goto version_information_nl
goto version_information_nl_failed

:version_information_nl_failed
Title Versie-informatie
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Versie-informatie
echo.
echo Versie: 1.3.5
echo Platform: Windows
echo Release datum: 7-5-2024
echo Gemaakt door: Sem Boven
echo.
echo Update-informatie:
echo Gefixte bug
echo Sorry, dat is geen antwoord. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Wil je terug?:"
if "%input%" == "ja" goto settings_nl
if "%input%" == "Ja" goto settings_nl
if "%input%" == "JA" goto settings_nl
goto version_information_nl_failed

:exit_nl
Title Stoppen
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Stoppen
echo Weet je zeker dat je wilt stoppen?
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Voer je antwoord in:"
if "%input%" == "ja" exit
if "%input%" == "Ja" exit
if "%input%" == "JA" exit
if "%input%" == "nee" goto menu_nl
if "%input%" == "Nee" goto menu_nl
if "%input%" == "NEE" goto menu_nl
goto exit_nl_failed

:exit_nl_failed
Title Stoppen
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Stoppen
echo Weet je zeker dat je wilt stoppen?
echo Sorry, dat is geen antwoord. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Voer je antwoord in:"
if "%input%" == "ja" exit
if "%input%" == "Ja" exit
if "%input%" == "JA" exit
if "%input%" == "nee" goto menu_nl
if "%input%" == "Nee" goto menu_nl
if "%input%" == "NEE" goto menu_nl
goto exit_nl_failed

:error_nl
Title Error
cls
echo --------------------------------------------------
echo                                      %date%
echo. 
echo Error.
echo Pagina bestaat niet (meer).
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Wil je terug naar het menu?:"
if "%input%" == "ja" goto menu_nl
if "%input%" == "Ja" goto menu_nl
if "%input%" == "JA" goto menu_nl
if "%input%" == "secret" goto secret_menu_nl
goto error_nl

:secret_menu_nl
Title ???
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Welkom bij het geheime menu.
echo Waar wil je heen gaan?
echo.
echo 1: Afsluiten
echo 2: Opnieuw opstarten
echo 3: Afmelden
echo 4: Menu Lite Preview
echo 5: Terug naar het menu
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke pagina kies je?:"
if "%input%" == "1" goto shutdown_nl
if "%input%" == "afsluiten" goto shutdown_nl
if "%input%" == "Afsluiten" goto shutdown_nl
if "%input%" == "AFSLUITEN" goto shutdown_nl
if "%input%" == "2" goto restart_nl
if "%input%" == "opnieuw opstarten" goto restart_nl
if "%input%" == "Opnieuw opstarten" goto restart_nl
if "%input%" == "Opnieuw Opstarten" goto restart_nl
if "%input%" == "OPNIEUW OPSTARTEN" goto restart_nl
if "%input%" == "3" goto logout_nl
if "%input%" == "afmelden" goto logout_nl
if "%input%" == "Afmelden" goto logout_nl
if "%input%" == "AFMELDEN" goto logout_nl
if "%input%" == "4" goto menu_lite_preview_nl
if "%input%" == "menu lite preview" goto menu_lite_preview_nl
if "%input%" == "Menu lite preview" goto menu_lite_preview_nl
if "%input%" == "Menu Lite Preview" goto menu_lite_preview_nl
if "%input%" == "MENU LITE PREVIEW" goto menu_lite_preview_nl
if "%input%" == "5" goto menu_nl
if "%input%" == "terug naar het menu" goto menu_nl
if "%input%" == "Terug naar het menu" goto menu_nl
if "%input%" == "Terug Naar Het Menu" goto menu_nl
if "%input%" == "TERUG NAAR HET MENU" goto menu_nl
goto error_nl

:shutdown_nl
Title Afsluiten
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Afsluiten
echo Weet je zeker dat je wilt afsluiten?
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Voer je antwoord in:"
if "%input%" == "ja" shutdown /s /t 0
if "%input%" == "Ja" shutdown /s /t 0
if "%input%" == "JA" shutdown /s /t 0
if "%input%" == "nee" goto secret_menu_nl
if "%input%" == "Nee" goto secret_menu_nl
if "%input%" == "NEE" goto secret_menu_nl
goto shutdown_nl_failed

:shutdown_nl_failed
Title Afsluiten
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Afsluiten
echo Weet je zeker dat je wilt afsluiten?
echo Sorry, dat is geen antwoord. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Voer je antwoord in:"
if "%input%" == "ja" shutdown /s /t 0
if "%input%" == "Ja" shutdown /s /t 0
if "%input%" == "JA" shutdown /s /t 0
if "%input%" == "nee" goto secret_menu_nl
if "%input%" == "Nee" goto secret_menu_nl
if "%input%" == "NEE" goto secret_menu_nl
goto shutdown_nl_failed

:restart_nl
Title Opnieuw opstarten
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Opnieuw opstarten
echo Weet je zeker dat je opnieuw wilt opstarten?
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Voer je antwoord in:"
if "%input%" == "ja" shutdown /r /t 0
if "%input%" == "Ja" shutdown /r /t 0
if "%input%" == "JA" shutdown /r /t 0
if "%input%" == "nee" goto secret_menu_nl
if "%input%" == "Nee" goto secret_menu_nl
if "%input%" == "NEE" goto secret_menu_nl
goto restart_nl_failed

:restart_nl_failed
Title Opnieuw opstarten
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Opnieuw opstarten
echo Weet je zeker dat je opnieuw wilt opstarten?
echo Sorry, dat is geen antwoord. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Voer je antwoord in:"
if "%input%" == "ja" shutdown /r /t 0
if "%input%" == "Ja" shutdown /r /t 0
if "%input%" == "JA" shutdown /r /t 0
if "%input%" == "nee" goto secret_menu_nl
if "%input%" == "Nee" goto secret_menu_nl
if "%input%" == "NEE" goto secret_menu_nl
goto restart_nl_failed

:logout_nl
Title Afmelden
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Afmelden
echo Weet je zeker dat je wilt afmelden?
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Voer je antwoord in:"
if "%input%" == "ja" shutdown /l /t 0
if "%input%" == "Ja" shutdown /l /t 0
if "%input%" == "JA" shutdown /l /t 0
if "%input%" == "nee" goto secret_menu_nl
if "%input%" == "Nee" goto secret_menu_nl
if "%input%" == "NEE" goto secret_menu_nl
goto logout_nl_failed

:logout_nl_failed
Title Afmelden
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Afmelden
echo Weet je zeker dat je wilt afmelden?
echo Sorry, dat is geen antwoord. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Voer je antwoord in:"
if "%input%" == "ja" shutdown /l /t 0
if "%input%" == "Ja" shutdown /l /t 0
if "%input%" == "JA" shutdown /l /t 0
if "%input%" == "nee" goto secret_menu_nl
if "%input%" == "Nee" goto secret_menu_nl
if "%input%" == "NEE" goto secret_menu_nl
goto logout_nl_failed

:menu_lite_preview_nl
Title Menu Lite Preview
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Menu Lite Preview
echo Welke versie wil je spelen?
echo.
echo 1: Menu Lite Beta
echo 2: Menu Lite 2.0 Pre-Release
echo 3: Terug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke versie wil je spelen?:"
if "%input%" == "1" goto start_menu_lite_beta_nl
if "%input%" == "menu lite beta" goto start_menu_lite_beta_nl
if "%input%" == "Menu lite beta" goto start_menu_lite_beta_nl
if "%input%" == "Menu Lite Beta" goto start_menu_lite_beta_nl
if "%input%" == "MENU LITE BETA" goto start_menu_lite_beta_nl
if "%input%" == "2" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "menu lite 2.0 pre-release" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "Menu lite 2.0 pre-release" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "Menu Lite 2.0 Pre-Release" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "MENU LITE 2.0 PRE-RELEASE" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "3" goto secret_menu_nl
if "%input%" == "terug" goto secret_menu_nl
if "%input%" == "Terug" goto secret_menu_nl
if "%input%" == "TERUG" goto secret_menu_nl
goto menu_lite_preview_nl_failed

:menu_lite_preview_nl_failed
Title Menu Lite Preview
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Menu Lite Preview
echo Welke versie wil je spelen?
echo.
echo 1: Menu Lite Beta
echo 2: Menu Lite 2.0 Pre-Release
echo 3: Terug
echo Sorry, dat is geen versie. Probeer opnieuw.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke versie wil je spelen?:"
if "%input%" == "1" goto start_menu_lite_beta_nl
if "%input%" == "menu lite beta" goto start_menu_lite_beta_nl
if "%input%" == "Menu lite beta" goto start_menu_lite_beta_nl
if "%input%" == "Menu Lite Beta" goto start_menu_lite_beta_nl
if "%input%" == "MENU LITE BETA" goto start_menu_lite_beta_nl
if "%input%" == "2" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "menu lite 2.0 pre-release" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "Menu lite 2.0 pre-release" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "Menu Lite 2.0 Pre-Release" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "MENU LITE 2.0 PRE-RELEASE" goto start_menu_lite_2.0_pre-release_nl
if "%input%" == "3" goto secret_menu_nl
if "%input%" == "terug" goto secret_menu_nl
if "%input%" == "Terug" goto secret_menu_nl
if "%input%" == "TERUG" goto secret_menu_nl
goto menu_lite_preview_nl_failed

:start_menu_lite_beta_nl
start cmd /k ".\Menu Lite Beta.bat" & goto menu_lite_preview_nl

:start_menu_lite_2.0_pre-release_nl
start cmd /k ".\Menu Lite 2.0 Pre-Release.bat" & goto menu_lite_preview_nl

:password_en
Title Password
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Enter your password.
echo. 
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Password:"
if "%input%" == "0000" goto menu_en
goto password_en_failed

:password_en_failed
Title Password
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Enter your password.
echo Wrong password. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Password:"
if "%input%" == "0000" goto menu_en
goto password_en_failed

:menu_en
Title Menu
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Welcome to the menu.
echo Where do you want to go?
echo. 
echo 1: Games
echo 2: Notepad
echo 3: Open file location
echo 4: Settings
echo 5: Exit
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which page do you choose?:"
if "%input%" == "1" goto games_en
if "%input%" == "games" goto games_en
if "%input%" == "Games" goto games_en
if "%input%" == "GAMES" goto games_en
if "%input%" == "2" goto notepad_en
if "%input%" == "notepad" goto notepad_en
if "%input%" == "Notepad" goto notepad_en
if "%input%" == "NOTEPAD" goto notepad_en
if "%input%" == "3" goto open_file_location_en
if "%input%" == "open file location" goto open_file_location_en
if "%input%" == "Open file location" goto open_file_location_en
if "%input%" == "Open File Location" goto open_file_location_en
if "%input%" == "OPEN FILE LOCATION" goto open_file_location_en
if "%input%" == "4" goto settings_en
if "%input%" == "settings" goto settings_en
if "%input%" == "Settings" goto settings_en
if "%input%" == "SETTINGS" goto settings_en
if "%input%" == "5" goto exit_en
if "%input%" == "exit" goto exit_en
if "%input%" == "exit" goto exit_en
if "%input%" == "exit" goto exit_en
goto error_en

:games_en
Title Games
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Welcome to the games.
echo Where do you want to go?
echo.
echo 1: Tic Tac Toe
echo 2: Back
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which game do you choose?:"
if "%input%" == "1" goto start_tictactoe_en
if "%input%" == "tic tac toe" goto start_tictactoe_en
if "%input%" == "Tic tac toe" goto start_tictactoe_en
if "%input%" == "Tic Tac Toe" goto start_tictactoe_en
if "%input%" == "TIC TAC TOE" goto start_tictactoe_en
if "%input%" == "2" goto menu_en
if "%input%" == "back" goto menu_en
if "%input%" == "Back" goto menu_en
if "%input%" == "BACK" goto menu_en
goto error_en

:start_tictactoe_en
start cmd /k ".\Tic Tac Toe.bat" & goto games_en

:notepad_en
Title Notepad
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Notepad
echo Which sheet do you want to go to?
echo.
echo 1: %notepad_title_1%
echo 2: %notepad_title_2%
echo 3: %notepad_title_3%
echo 4: Back
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which sheet?:"
if "%input%" == "1" goto notepad_en_1
if "%input%" == "%notepad_title_1%" goto notepad_en_1
if "%input%" == "2" goto notepad_en_2
if "%input%" == "%notepad_title_2%" goto notepad_en_2
if "%input%" == "3" goto notepad_en_3
if "%input%" == "%notepad_title_3%" goto notepad_en_3
if "%input%" == "4" goto menu_en
if "%input%" == "back" goto menu_en
if "%input%" == "Back" goto menu_en
if "%input%" == "BACK" goto menu_en
goto notepad_en_failed

:notepad_en_failed
Title Notepad
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Notepad
echo Which sheet do you want to go to?
echo.
echo 1: %notepad_title_1%
echo 2: %notepad_title_2%
echo 3: %notepad_title_3%
echo 4: Back
echo Sorry, that's not a sheet. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which sheet?:"
if "%input%" == "1" goto notepad_en_1
if "%input%" == "%notepad_title_1%" goto notepad_en_1
if "%input%" == "2" goto notepad_en_2
if "%input%" == "%notepad_title_2%" goto notepad_en_2
if "%input%" == "3" goto notepad_en_3
if "%input%" == "%notepad_title_3%" goto notepad_en_3
if "%input%" == "4" goto menu_en
if "%input%" == "back" goto menu_en
if "%input%" == "Back" goto menu_en
if "%input%" == "BACK" goto menu_en
goto notepad_en_failed

:notepad_en_1
if "%notepad_title_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_1_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_2_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_3_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_4_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_5_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_6_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_7_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_8_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_9_1%" == "%empty%" goto notepad_en_1_edit
if "%notepad_line_10_1%" == "%empty%" goto notepad_en_1_edit
Title %notepad_title_1%
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo %notepad_title_1%
echo.
echo %notepad_line_1_1%
echo %notepad_line_2_1%
echo %notepad_line_3_1%
echo %notepad_line_4_1%
echo %notepad_line_5_1%
echo %notepad_line_6_1%
echo %notepad_line_7_1%
echo %notepad_line_8_1%
echo %notepad_line_9_1%
echo %notepad_line_10_1%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Edit: 1                                    Back: 2
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Input:"
if "%input%" == "1" goto notepad_en_1_edit
if "%input%" == "edit" goto notepad_en_1_edit
if "%input%" == "Edit" goto notepad_en_1_edit
if "%input%" == "EDIT" goto notepad_en_1_edit
if "%input%" == "2" goto notepad_en
if "%input%" == "back" goto notepad_en
if "%input%" == "Back" goto notepad_en
if "%input%" == "BACK" goto notepad_en
goto notepad_en_1

:notepad_en_1_edit
Title %notepad_title_1% Editing
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_title_1="Title here: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_line_1_1="Line 01: "
set /p notepad_line_2_1="Line 02: "
set /p notepad_line_3_1="Line 03: "
set /p notepad_line_4_1="Line 04: "
set /p notepad_line_5_1="Line 05: "
set /p notepad_line_6_1="Line 06: "
set /p notepad_line_7_1="Line 07: "
set /p notepad_line_8_1="Line 08: "
set /p notepad_line_9_1="Line 09: "
set /p notepad_line_10_1="Line 10: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Back: 1
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Input:"
if "%input%" == "1" goto notepad_en_1
if "%input%" == "back" goto notepad_en_1
if "%input%" == "Back" goto notepad_en_1
if "%input%" == "BACK" goto notepad_en_1
goto notepad_en_1_edit

:notepad_en_2
if "%notepad_title_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_1_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_2_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_3_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_4_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_5_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_6_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_7_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_8_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_9_2%" == "%empty%" goto notepad_en_2_edit
if "%notepad_line_10_2%" == "%empty%" goto notepad_en_2_edit
Title %notepad_title_2%
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo %notepad_title_2%
echo.
echo %notepad_line_1_2%
echo %notepad_line_2_2%
echo %notepad_line_3_2%
echo %notepad_line_4_2%
echo %notepad_line_5_2%
echo %notepad_line_6_2%
echo %notepad_line_7_2%
echo %notepad_line_8_2%
echo %notepad_line_9_2%
echo %notepad_line_10_2%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Edit: 1                                    Back: 2
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Input:"
if "%input%" == "1" goto notepad_en_2_edit
if "%input%" == "edit" goto notepad_en_2_edit
if "%input%" == "Edit" goto notepad_en_2_edit
if "%input%" == "EDIT" goto notepad_en_2_edit
if "%input%" == "2" goto notepad_en
if "%input%" == "back" goto notepad_en
if "%input%" == "Back" goto notepad_en
if "%input%" == "BACK" goto notepad_en
goto notepad_en_2

:notepad_en_2_edit
Title %notepad_title_2% Editing
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_title_2="Title here: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_line_1_2="Line 01: "
set /p notepad_line_2_2="Line 02: "
set /p notepad_line_3_2="Line 03: "
set /p notepad_line_4_2="Line 04: "
set /p notepad_line_5_2="Line 05: "
set /p notepad_line_6_2="Line 06: "
set /p notepad_line_7_2="Line 07: "
set /p notepad_line_8_2="Line 08: "
set /p notepad_line_9_2="Line 09: "
set /p notepad_line_10_2="Line 10: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Back: 1
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Input:"
if "%input%" == "1" goto notepad_en_2
if "%input%" == "back" goto notepad_en_2
if "%input%" == "Back" goto notepad_en_2
if "%input%" == "BACK" goto notepad_en_2
goto notepad_en_2_edit

:notepad_en_3
if "%notepad_title_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_1_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_2_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_3_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_4_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_5_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_6_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_7_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_8_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_9_3%" == "%empty%" goto notepad_en_3_edit
if "%notepad_line_10_3%" == "%empty%" goto notepad_en_3_edit
Title %notepad_title_3%
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo %notepad_title_3%
echo.
echo %notepad_line_1_3%
echo %notepad_line_2_3%
echo %notepad_line_3_3%
echo %notepad_line_4_3%
echo %notepad_line_5_3%
echo %notepad_line_6_3%
echo %notepad_line_7_3%
echo %notepad_line_8_3%
echo %notepad_line_9_3%
echo %notepad_line_10_3%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Edit: 1                                    Back: 2
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Input:"
if "%input%" == "1" goto notepad_en_3_edit
if "%input%" == "edit" goto notepad_en_3_edit
if "%input%" == "Edit" goto notepad_en_3_edit
if "%input%" == "EDIT" goto notepad_en_3_edit
if "%input%" == "2" goto notepad_en
if "%input%" == "back" goto notepad_en
if "%input%" == "Back" goto notepad_en
if "%input%" == "BACK" goto notepad_en
goto notepad_en_3

:notepad_en_3_edit
Title %notepad_title_3% Editing
cls
echo --------------------------------------------------
echo                                      %date%
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_title_3="Title here: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
set /p notepad_line_1_3="Line 01: "
set /p notepad_line_2_3="Line 02: "
set /p notepad_line_3_3="Line 03: "
set /p notepad_line_4_3="Line 04: "
set /p notepad_line_5_3="Line 05: "
set /p notepad_line_6_3="Line 06: "
set /p notepad_line_7_3="Line 07: "
set /p notepad_line_8_3="Line 08: "
set /p notepad_line_9_3="Line 09: "
set /p notepad_line_10_3="Line 10: "
echo - - - - - - - - - - - - - - - - - - - - - - - - -
echo Back: 1
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Input:"
if "%input%" == "1" goto notepad_en_3
if "%input%" == "back" goto notepad_en_3
if "%input%" == "Back" goto notepad_en_3
if "%input%" == "BACK" goto notepad_en_3
goto notepad_en_3_edit

:open_file_location_en
Title Open file location
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Open file location
echo Do you want to open a location or go to explorer?
echo.
echo 1: Open location
echo 2: Explorer
echo 3: Back
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Open location or explorer?:"
if "%input%" == "1" goto open_file_location_en_open_location
if "%input%" == "open location" goto open_file_location_en_open_location
if "%input%" == "Open location" goto open_file_location_en_open_location
if "%input%" == "Open Location" goto open_file_location_en_open_location
if "%input%" == "OPEN LOCATION" goto open_file_location_en_open_location
if "%input%" == "2" explorer & goto open_file_location_en
if "%input%" == "explorer" explorer & goto open_file_location_en
if "%input%" == "Explorer" explorer & goto open_file_location_en
if "%input%" == "EXPLORER" explorer & goto open_file_location_en
if "%input%" == "3" goto menu_en
if "%input%" == "back" goto menu_en
if "%input%" == "Back" goto menu_en
if "%input%" == "BACK" goto menu_en
goto open_file_location_en_failed

:open_file_location_en_failed
Title Open file location
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Open file location
echo Do you want to open a location or go to explorer?
echo.
echo 1: Open location
echo 2: Explorer
echo 3: Back
echo Sorry, that's not an option. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Open location or explorer?:"
if "%input%" == "1" goto open_file_location_en_open_location
if "%input%" == "open location" goto open_file_location_en_open_location
if "%input%" == "Open location" goto open_file_location_en_open_location
if "%input%" == "Open Location" goto open_file_location_en_open_location
if "%input%" == "OPEN LOCATION" goto open_file_location_en_open_location
if "%input%" == "2" explorer & goto open_file_location_en
if "%input%" == "explorer" explorer & goto open_file_location_en
if "%input%" == "Explorer" explorer & goto open_file_location_en
if "%input%" == "EXPLORER" explorer & goto open_file_location_en
if "%input%" == "3" goto menu_en
if "%input%" == "back" goto menu_en
if "%input%" == "Back" goto menu_en
if "%input%" == "BACK" goto menu_en
goto open_file_location_en_failed

:open_file_location_en_open_location
Title Open location
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Open location
echo.
echo Enter the location. 
echo You automatically go back when you fill in.
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p location="Input:"
explorer "%location%" & goto open_file_location_en

:settings_en
Title Settings
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Settings
echo.
echo 1: Language
echo 2: Colors
echo 3: Version-information
echo 4: Back
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which page do you choose?:"
if "%input%" == "4" goto menu_en
if "%input%" == "back" goto menu_en
if "%input%" == "Back" goto menu_en
if "%input%" == "BACK" goto menu_en
if "%input%" == "1" goto language_en
if "%input%" == "language" goto language_en
if "%input%" == "Language" goto language_en
if "%input%" == "LANGUAGE" goto language_en
if "%input%" == "2" goto colors_en
if "%input%" == "colors" goto colors_en
if "%input%" == "Colors" goto colors_en
if "%input%" == "COLORS" goto colors_en
if "%input%" == "3" goto version_information_en
if "%input%" == "version-information" goto version_information_en
if "%input%" == "Version-information" goto version_information_en
if "%input%" == "Version-Information" goto version_information_en
if "%input%" == "VERSION-INFORMATION" goto version_information_en
goto error_en

:language_en
Title Language
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Choose your language.
echo.
echo 1: Nederlands (Dutch)
echo 2: English
echo 3: Back
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which language do you choose?:"
if "%input%" == "3" goto settings_en
if "%input%" == "back" goto settings_en
if "%input%" == "Back" goto settings_en
if "%input%" == "BACK" goto settings_en
if "%input%" == "1" goto language_nl
if "%input%" == "nederlands" goto language_nl
if "%input%" == "Nederlands" goto language_nl
if "%input%" == "NEDERLANDS" goto language_nl
if "%input%" == "dutch" goto language_nl
if "%input%" == "Dutch" goto language_nl
if "%input%" == "DUTCH" goto language_nl
if "%input%" == "2" goto language_en
if "%input%" == "english" goto language_en
if "%input%" == "English" goto language_en
if "%input%" == "ENGLISH" goto language_en
goto language_en_failed

:language_en_failed
Title Language
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Choose your language.
echo.
echo 1: Nederlands (Dutch)
echo 2: English
echo 3: Back
echo This language does not exist. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which language do you choose?:"
if "%input%" == "3" goto settings_en
if "%input%" == "back" goto settings_en
if "%input%" == "Back" goto settings_en
if "%input%" == "BACK" goto settings_en
if "%input%" == "1" goto language_nl
if "%input%" == "nederlands" goto language_nl
if "%input%" == "Nederlands" goto language_nl
if "%input%" == "NEDERLANDS" goto language_nl
if "%input%" == "dutch" goto language_nl
if "%input%" == "Dutch" goto language_nl
if "%input%" == "DUTCH" goto language_nl
if "%input%" == "2" goto language_en
if "%input%" == "english" goto language_en
if "%input%" == "English" goto language_en
if "%input%" == "ENGLISH" goto language_en
goto language_en_failed

:colors_en
Title Colors
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Choose your colors.
echo The first color is the text
echo and the second color is the background.
echo For example: '1-7' or 'Red-Black.'
echo.
echo 1: Red
echo 2: Yellow
echo 3: Green
echo 4: Blue
echo 5: White
echo 6: Gray
echo 7: Black
echo 8: Back
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which two colors do you choose?:"
if "%input%" == "1-1" goto colors_same_en
if "%input%" == "red-red" goto colors_same_en
if "%input%" == "Red-red" goto colors_same_en
if "%input%" == "Red-Red" goto colors_same_en
if "%input%" == "RED-RED" goto colors_same_en
if "%input%" == "1-2" color 64
if "%input%" == "red-yellow" color 64
if "%input%" == "Red-yellow" color 64
if "%input%" == "Red-Yellow" color 64
if "%input%" == "Red-YELLOW" color 64
if "%input%" == "1-3" color 24
if "%input%" == "red-green" color 24
if "%input%" == "Red-green" color 24
if "%input%" == "Red-Green" color 24
if "%input%" == "RED-GREEN" color 24
if "%input%" == "1-4" color 14
if "%input%" == "red-blue" color 14
if "%input%" == "Red-blue" color 14
if "%input%" == "Red-Blue" color 14
if "%input%" == "RED-BLUE" color 14
if "%input%" == "1-5" color 74
if "%input%" == "red-white" color 74
if "%input%" == "Red-white" color 74
if "%input%" == "Red-White" color 74
if "%input%" == "RED-WHITE" color 74
if "%input%" == "1-6" color 84
if "%input%" == "red-gray" color 84
if "%input%" == "Red-gray" color 84
if "%input%" == "Red-Gray" color 84
if "%input%" == "RED-GRAY" color 84
if "%input%" == "1-7" color 04
if "%input%" == "red-black" color 04
if "%input%" == "Red-black" color 04
if "%input%" == "Red-Black" color 04
if "%input%" == "RED-BLACK" color 04
if "%input%" == "2-1" color 46
if "%input%" == "yellow-red" color 46
if "%input%" == "Yellow-red" color 46
if "%input%" == "Yellow-Red" color 46
if "%input%" == "YELLOW-RED" color 46
if "%input%" == "2-2" goto colors_same_en
if "%input%" == "yellow-yellow" goto colors_same_en
if "%input%" == "Yellow-yellow" goto colors_same_en
if "%input%" == "Yellow-Yellow" goto colors_same_en
if "%input%" == "YELLOW-YELLOW" goto colors_same_en
if "%input%" == "2-3" color 26
if "%input%" == "yellow-green" color 26
if "%input%" == "Yellow-green" color 26
if "%input%" == "Yellow-Green" color 26
if "%input%" == "YELLOW-GREEN" color 26
if "%input%" == "2-4" color 16
if "%input%" == "yellow-blue" color 16
if "%input%" == "Yellow-blue" color 16
if "%input%" == "Yellow-Blue" color 16
if "%input%" == "YELLOW-BLUE" color 16
if "%input%" == "2-5" color 76
if "%input%" == "yellow-white" color 76
if "%input%" == "Yellow-white" color 76
if "%input%" == "Yellow-White" color 76
if "%input%" == "YELLOW-WHITE" color 76
if "%input%" == "2-6" color 86
if "%input%" == "yellow-gray" color 86
if "%input%" == "Yellow-gray" color 86
if "%input%" == "Yellow-Gray" color 86
if "%input%" == "YELLOW-GRAY" color 86
if "%input%" == "2-7" color 06
if "%input%" == "yellow-black" color 06
if "%input%" == "Yellow-black" color 06
if "%input%" == "Yellow-Black" color 06
if "%input%" == "YELLOW-BLACK" color 06
if "%input%" == "3-1" color 42
if "%input%" == "green-red" color 42
if "%input%" == "Green-red" color 42
if "%input%" == "Green-Red" color 42
if "%input%" == "GREEN-RED" color 42
if "%input%" == "3-2" color 62
if "%input%" == "green-yellow" color 62
if "%input%" == "Green-yellow" color 62
if "%input%" == "Green-Yellow" color 62
if "%input%" == "GREEN-YELLOW" color 62
if "%input%" == "3-3" goto colors_same_en
if "%input%" == "green-green" goto colors_same_en
if "%input%" == "Green-green" goto colors_same_en
if "%input%" == "Green-Green" goto colors_same_en
if "%input%" == "GREEN-GREEN" goto colors_same_en
if "%input%" == "3-4" color 12
if "%input%" == "green-blue" color 12
if "%input%" == "Green-blue" color 12
if "%input%" == "Green-Blue" color 12
if "%input%" == "GREEN-BLUE" color 12
if "%input%" == "3-5" color 72
if "%input%" == "green-white" color 72
if "%input%" == "Green-white" color 72
if "%input%" == "Green-White" color 72
if "%input%" == "GREEN-WHITE" color 72
if "%input%" == "3-6" color 82
if "%input%" == "green-gray" color 82
if "%input%" == "Green-gray" color 82
if "%input%" == "Green-Gray" color 82
if "%input%" == "GREEN-GRAY" color 82
if "%input%" == "3-7" color 02
if "%input%" == "green-black" color 02
if "%input%" == "Green-black" color 02
if "%input%" == "Green-Black" color 02
if "%input%" == "GREEN-BLACK" color 02
if "%input%" == "4-1" color 41
if "%input%" == "blue-red" color 41
if "%input%" == "Blue-red" color 41
if "%input%" == "Blue-Red" color 41
if "%input%" == "BLUE-RED" color 41
if "%input%" == "4-2" color 61
if "%input%" == "blue-yellow" color 61
if "%input%" == "Blue-yellow" color 61
if "%input%" == "Blue-Yellow" color 61
if "%input%" == "BLUE-YELLOW" color 61
if "%input%" == "4-3" color 21
if "%input%" == "blue-green" color 21
if "%input%" == "Blue-green" color 21
if "%input%" == "Blue-Green" color 21
if "%input%" == "BLUE-GREEN" color 21
if "%input%" == "4-4" goto colors_same_en
if "%input%" == "blue-blue" goto colors_same_en
if "%input%" == "Blue-blue" goto colors_same_en
if "%input%" == "Blue-Blue" goto colors_same_en
if "%input%" == "BLUE-BLUE" goto colors_same_en
if "%input%" == "4-5" color 71
if "%input%" == "blue-white" color 71
if "%input%" == "Blue-white" color 71
if "%input%" == "Blue-White" color 71
if "%input%" == "BLUE-WHITE" color 71
if "%input%" == "4-6" color 81
if "%input%" == "blue-gray" color 81
if "%input%" == "Blue-gray" color 81
if "%input%" == "Blue-Gray" color 81
if "%input%" == "BLUE-GRAY" color 81
if "%input%" == "4-7" color 01
if "%input%" == "blue-black" color 01
if "%input%" == "Blue-black" color 01
if "%input%" == "Blue-Black" color 01
if "%input%" == "BLUE-BLACK" color 01
if "%input%" == "5-1" color 47
if "%input%" == "white-red" color 47
if "%input%" == "White-red" color 47
if "%input%" == "White-Red" color 47
if "%input%" == "WHITE-RED" color 47
if "%input%" == "5-2" color 67
if "%input%" == "white-yellow" color 67
if "%input%" == "White-yellow" color 67
if "%input%" == "White-Yellow" color 67
if "%input%" == "WHITE-YELLOW" color 67
if "%input%" == "5-3" color 27
if "%input%" == "white-green" color 27
if "%input%" == "White-green" color 27
if "%input%" == "White-Green" color 27
if "%input%" == "WHITE-GREEN" color 27
if "%input%" == "5-4" color 17
if "%input%" == "white-blue" color 17
if "%input%" == "White-blue" color 17
if "%input%" == "White-Blue" color 17
if "%input%" == "WHITE-BLUE" color 17
if "%input%" == "5-5" goto colors_same_en
if "%input%" == "white-white" goto colors_same_en
if "%input%" == "White-white" goto colors_same_en
if "%input%" == "White-White" goto colors_same_en
if "%input%" == "WHITE-WHITE" goto colors_same_en
if "%input%" == "5-6" color 87
if "%input%" == "white-gray" color 87
if "%input%" == "White-gray" color 87
if "%input%" == "White-Gray" color 87
if "%input%" == "WHITE-GRAY" color 87
if "%input%" == "5-7" color 07
if "%input%" == "white-black" color 07
if "%input%" == "White-black" color 07
if "%input%" == "White-Black" color 07
if "%input%" == "WHITE-BLACK" color 07
if "%input%" == "6-1" color 48
if "%input%" == "gray-red" color 48
if "%input%" == "Gray-red" color 48
if "%input%" == "Gray-Red" color 48
if "%input%" == "GRAY-RED" color 48
if "%input%" == "6-2" color 68
if "%input%" == "gray-yellow" color 68
if "%input%" == "Gray-yellow" color 68
if "%input%" == "Gray-Yellow" color 68
if "%input%" == "GRAY-YELLOW" color 68
if "%input%" == "6-3" color 28
if "%input%" == "gray-green" color 28
if "%input%" == "Gray-green" color 28
if "%input%" == "Gray-Green" color 28
if "%input%" == "GRAY-GREEN" color 28
if "%input%" == "6-4" color 18
if "%input%" == "gray-blue" color 18
if "%input%" == "Gray-blue" color 18
if "%input%" == "Gray-Blue" color 18
if "%input%" == "GRAY-BLUE" color 18
if "%input%" == "6-5" color 78
if "%input%" == "gray-white" color 78
if "%input%" == "Gray-white" color 78
if "%input%" == "Gray-White" color 78
if "%input%" == "GRAY-WHITE" color 78
if "%input%" == "6-6" goto colors_same_en
if "%input%" == "gray-gray" goto colors_same_en
if "%input%" == "Gray-gray" goto colors_same_en
if "%input%" == "Gray-Gray" goto colors_same_en
if "%input%" == "GRAY-GRAY" goto colors_same_en
if "%input%" == "6-7" color 08
if "%input%" == "gray-black" color 08
if "%input%" == "Gray-black" color 08
if "%input%" == "Gray-Black" color 08
if "%input%" == "GRAY-BLACK" color 08
if "%input%" == "7-1" color 40
if "%input%" == "black-red" color 40
if "%input%" == "Black-red" color 40
if "%input%" == "Black-Red" color 40
if "%input%" == "BLACK-RED" color 40
if "%input%" == "7-2" color 60
if "%input%" == "black-yellow" color 60
if "%input%" == "Black-yellow" color 60
if "%input%" == "Black-Yellow" color 60
if "%input%" == "BLACK-YELLOW" color 60
if "%input%" == "7-3" color 20
if "%input%" == "black-green" color 20
if "%input%" == "Black-green" color 20
if "%input%" == "Black-Green" color 20
if "%input%" == "BLACK-GREEN" color 20
if "%input%" == "7-4" color 10
if "%input%" == "black-blue" color 10
if "%input%" == "Black-blue" color 10
if "%input%" == "Black-Blue" color 10
if "%input%" == "BLACK-BLUE" color 10
if "%input%" == "7-5" color 70
if "%input%" == "black-white" color 70
if "%input%" == "Black-white" color 70
if "%input%" == "Black-White" color 70
if "%input%" == "BLACK-WHITE" color 70
if "%input%" == "7-6" color 80
if "%input%" == "black-gray" color 80
if "%input%" == "Black-gray" color 80
if "%input%" == "Black-Gray" color 80
if "%input%" == "BLACK-GRAY" color 80
if "%input%" == "7-7" goto colors_same_en
if "%input%" == "black-black" goto colors_same_en
if "%input%" == "Black-black" goto colors_same_en
if "%input%" == "Black-Black" goto colors_same_en
if "%input%" == "BLACK-BLACK" goto colors_same_en
if "%input%" == "8" goto settings_en
if "%input%" == "back" goto settings_en
if "%input%" == "Back" goto settings_en
if "%input%" == "BACK" goto settings_en
goto colors_en

:colors_same_en
Title Colors
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Choose your colors.
echo The first color is the text
echo and the second color is the background.
echo For example: '1-7' or 'Red-Black.'
echo.
echo 1: Red
echo 2: Yellow
echo 3: Green
echo 4: Blue
echo 5: White
echo 6: Gray
echo 7: Black
echo 8: Back
echo Sorry, that's not possible. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which two colors do you choose?:"
if "%input%" == "1-1" goto colors_same_en
if "%input%" == "red-red" goto colors_same_en
if "%input%" == "Red-red" goto colors_same_en
if "%input%" == "Red-Red" goto colors_same_en
if "%input%" == "RED-RED" goto colors_same_en
if "%input%" == "1-2" color 64
if "%input%" == "red-yellow" color 64
if "%input%" == "Red-yellow" color 64
if "%input%" == "Red-Yellow" color 64
if "%input%" == "Red-YELLOW" color 64
if "%input%" == "1-3" color 24
if "%input%" == "red-green" color 24
if "%input%" == "Red-green" color 24
if "%input%" == "Red-Green" color 24
if "%input%" == "RED-GREEN" color 24
if "%input%" == "1-4" color 14
if "%input%" == "red-blue" color 14
if "%input%" == "Red-blue" color 14
if "%input%" == "Red-Blue" color 14
if "%input%" == "RED-BLUE" color 14
if "%input%" == "1-5" color 74
if "%input%" == "red-white" color 74
if "%input%" == "Red-white" color 74
if "%input%" == "Red-White" color 74
if "%input%" == "RED-WHITE" color 74
if "%input%" == "1-6" color 84
if "%input%" == "red-gray" color 84
if "%input%" == "Red-gray" color 84
if "%input%" == "Red-Gray" color 84
if "%input%" == "RED-GRAY" color 84
if "%input%" == "1-7" color 04
if "%input%" == "red-black" color 04
if "%input%" == "Red-black" color 04
if "%input%" == "Red-Black" color 04
if "%input%" == "RED-BLACK" color 04
if "%input%" == "2-1" color 46
if "%input%" == "yellow-red" color 46
if "%input%" == "Yellow-red" color 46
if "%input%" == "Yellow-Red" color 46
if "%input%" == "YELLOW-RED" color 46
if "%input%" == "2-2" goto colors_same_en
if "%input%" == "yellow-yellow" goto colors_same_en
if "%input%" == "Yellow-yellow" goto colors_same_en
if "%input%" == "Yellow-Yellow" goto colors_same_en
if "%input%" == "YELLOW-YELLOW" goto colors_same_en
if "%input%" == "2-3" color 26
if "%input%" == "yellow-green" color 26
if "%input%" == "Yellow-green" color 26
if "%input%" == "Yellow-Green" color 26
if "%input%" == "YELLOW-GREEN" color 26
if "%input%" == "2-4" color 16
if "%input%" == "yellow-blue" color 16
if "%input%" == "Yellow-blue" color 16
if "%input%" == "Yellow-Blue" color 16
if "%input%" == "YELLOW-BLUE" color 16
if "%input%" == "2-5" color 76
if "%input%" == "yellow-white" color 76
if "%input%" == "Yellow-white" color 76
if "%input%" == "Yellow-White" color 76
if "%input%" == "YELLOW-WHITE" color 76
if "%input%" == "2-6" color 86
if "%input%" == "yellow-gray" color 86
if "%input%" == "Yellow-gray" color 86
if "%input%" == "Yellow-Gray" color 86
if "%input%" == "YELLOW-GRAY" color 86
if "%input%" == "2-7" color 06
if "%input%" == "yellow-black" color 06
if "%input%" == "Yellow-black" color 06
if "%input%" == "Yellow-Black" color 06
if "%input%" == "YELLOW-BLACK" color 06
if "%input%" == "3-1" color 42
if "%input%" == "green-red" color 42
if "%input%" == "Green-red" color 42
if "%input%" == "Green-Red" color 42
if "%input%" == "GREEN-RED" color 42
if "%input%" == "3-2" color 62
if "%input%" == "green-yellow" color 62
if "%input%" == "Green-yellow" color 62
if "%input%" == "Green-Yellow" color 62
if "%input%" == "GREEN-YELLOW" color 62
if "%input%" == "3-3" goto colors_same_en
if "%input%" == "green-green" goto colors_same_en
if "%input%" == "Green-green" goto colors_same_en
if "%input%" == "Green-Green" goto colors_same_en
if "%input%" == "GREEN-GREEN" goto colors_same_en
if "%input%" == "3-4" color 12
if "%input%" == "green-blue" color 12
if "%input%" == "Green-blue" color 12
if "%input%" == "Green-Blue" color 12
if "%input%" == "GREEN-BLUE" color 12
if "%input%" == "3-5" color 72
if "%input%" == "green-white" color 72
if "%input%" == "Green-white" color 72
if "%input%" == "Green-White" color 72
if "%input%" == "GREEN-WHITE" color 72
if "%input%" == "3-6" color 82
if "%input%" == "green-gray" color 82
if "%input%" == "Green-gray" color 82
if "%input%" == "Green-Gray" color 82
if "%input%" == "GREEN-GRAY" color 82
if "%input%" == "3-7" color 02
if "%input%" == "green-black" color 02
if "%input%" == "Green-black" color 02
if "%input%" == "Green-Black" color 02
if "%input%" == "GREEN-BLACK" color 02
if "%input%" == "4-1" color 41
if "%input%" == "blue-red" color 41
if "%input%" == "Blue-red" color 41
if "%input%" == "Blue-Red" color 41
if "%input%" == "BLUE-RED" color 41
if "%input%" == "4-2" color 61
if "%input%" == "blue-yellow" color 61
if "%input%" == "Blue-yellow" color 61
if "%input%" == "Blue-Yellow" color 61
if "%input%" == "BLUE-YELLOW" color 61
if "%input%" == "4-3" color 21
if "%input%" == "blue-green" color 21
if "%input%" == "Blue-green" color 21
if "%input%" == "Blue-Green" color 21
if "%input%" == "BLUE-GREEN" color 21
if "%input%" == "4-4" goto colors_same_en
if "%input%" == "blue-blue" goto colors_same_en
if "%input%" == "Blue-blue" goto colors_same_en
if "%input%" == "Blue-Blue" goto colors_same_en
if "%input%" == "BLUE-BLUE" goto colors_same_en
if "%input%" == "4-5" color 71
if "%input%" == "blue-white" color 71
if "%input%" == "Blue-white" color 71
if "%input%" == "Blue-White" color 71
if "%input%" == "BLUE-WHITE" color 71
if "%input%" == "4-6" color 81
if "%input%" == "blue-gray" color 81
if "%input%" == "Blue-gray" color 81
if "%input%" == "Blue-Gray" color 81
if "%input%" == "BLUE-GRAY" color 81
if "%input%" == "4-7" color 01
if "%input%" == "blue-black" color 01
if "%input%" == "Blue-black" color 01
if "%input%" == "Blue-Black" color 01
if "%input%" == "BLUE-BLACK" color 01
if "%input%" == "5-1" color 47
if "%input%" == "white-red" color 47
if "%input%" == "White-red" color 47
if "%input%" == "White-Red" color 47
if "%input%" == "WHITE-RED" color 47
if "%input%" == "5-2" color 67
if "%input%" == "white-yellow" color 67
if "%input%" == "White-yellow" color 67
if "%input%" == "White-Yellow" color 67
if "%input%" == "WHITE-YELLOW" color 67
if "%input%" == "5-3" color 27
if "%input%" == "white-green" color 27
if "%input%" == "White-green" color 27
if "%input%" == "White-Green" color 27
if "%input%" == "WHITE-GREEN" color 27
if "%input%" == "5-4" color 17
if "%input%" == "white-blue" color 17
if "%input%" == "White-blue" color 17
if "%input%" == "White-Blue" color 17
if "%input%" == "WHITE-BLUE" color 17
if "%input%" == "5-5" goto colors_same_en
if "%input%" == "white-white" goto colors_same_en
if "%input%" == "White-white" goto colors_same_en
if "%input%" == "White-White" goto colors_same_en
if "%input%" == "WHITE-WHITE" goto colors_same_en
if "%input%" == "5-6" color 87
if "%input%" == "white-gray" color 87
if "%input%" == "White-gray" color 87
if "%input%" == "White-Gray" color 87
if "%input%" == "WHITE-GRAY" color 87
if "%input%" == "5-7" color 07
if "%input%" == "white-black" color 07
if "%input%" == "White-black" color 07
if "%input%" == "White-Black" color 07
if "%input%" == "WHITE-BLACK" color 07
if "%input%" == "6-1" color 48
if "%input%" == "gray-red" color 48
if "%input%" == "Gray-red" color 48
if "%input%" == "Gray-Red" color 48
if "%input%" == "GRAY-RED" color 48
if "%input%" == "6-2" color 68
if "%input%" == "gray-yellow" color 68
if "%input%" == "Gray-yellow" color 68
if "%input%" == "Gray-Yellow" color 68
if "%input%" == "GRAY-YELLOW" color 68
if "%input%" == "6-3" color 28
if "%input%" == "gray-green" color 28
if "%input%" == "Gray-green" color 28
if "%input%" == "Gray-Green" color 28
if "%input%" == "GRAY-GREEN" color 28
if "%input%" == "6-4" color 18
if "%input%" == "gray-blue" color 18
if "%input%" == "Gray-blue" color 18
if "%input%" == "Gray-Blue" color 18
if "%input%" == "GRAY-BLUE" color 18
if "%input%" == "6-5" color 78
if "%input%" == "gray-white" color 78
if "%input%" == "Gray-white" color 78
if "%input%" == "Gray-White" color 78
if "%input%" == "GRAY-WHITE" color 78
if "%input%" == "6-6" goto colors_same_en
if "%input%" == "gray-gray" goto colors_same_en
if "%input%" == "Gray-gray" goto colors_same_en
if "%input%" == "Gray-Gray" goto colors_same_en
if "%input%" == "GRAY-GRAY" goto colors_same_en
if "%input%" == "6-7" color 08
if "%input%" == "gray-black" color 08
if "%input%" == "Gray-black" color 08
if "%input%" == "Gray-Black" color 08
if "%input%" == "GRAY-BLACK" color 08
if "%input%" == "7-1" color 40
if "%input%" == "black-red" color 40
if "%input%" == "Black-red" color 40
if "%input%" == "Black-Red" color 40
if "%input%" == "BLACK-RED" color 40
if "%input%" == "7-2" color 60
if "%input%" == "black-yellow" color 60
if "%input%" == "Black-yellow" color 60
if "%input%" == "Black-Yellow" color 60
if "%input%" == "BLACK-YELLOW" color 60
if "%input%" == "7-3" color 20
if "%input%" == "black-green" color 20
if "%input%" == "Black-green" color 20
if "%input%" == "Black-Green" color 20
if "%input%" == "BLACK-GREEN" color 20
if "%input%" == "7-4" color 10
if "%input%" == "black-blue" color 10
if "%input%" == "Black-blue" color 10
if "%input%" == "Black-Blue" color 10
if "%input%" == "BLACK-BLUE" color 10
if "%input%" == "7-5" color 70
if "%input%" == "black-white" color 70
if "%input%" == "Black-white" color 70
if "%input%" == "Black-White" color 70
if "%input%" == "BLACK-WHITE" color 70
if "%input%" == "7-6" color 80
if "%input%" == "black-gray" color 80
if "%input%" == "Black-gray" color 80
if "%input%" == "Black-Gray" color 80
if "%input%" == "BLACK-GRAY" color 80
if "%input%" == "7-7" goto colors_same_en
if "%input%" == "black-black" goto colors_same_en
if "%input%" == "Black-black" goto colors_same_en
if "%input%" == "Black-Black" goto colors_same_en
if "%input%" == "BLACK-BLACK" goto colors_same_en
if "%input%" == "8" goto settings_en
if "%input%" == "back" goto settings_en
if "%input%" == "Back" goto settings_en
if "%input%" == "BACK" goto settings_en
goto colors_en

:version_information_en
Title Version-information
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Version-information
echo.
echo Version: 1.3.5
echo Platform: Windows
echo Release date: 7-5-2024
echo Made by: Sem Boven
echo.
echo Update-information:
echo Fixed bug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Do you want to go back?:"
if "%input%" == "yes" goto settings_en
if "%input%" == "Yes" goto settings_en
if "%input%" == "YES" goto settings_en
if "%input%" == "no" goto version_information_en
if "%input%" == "No" goto version_information_en
if "%input%" == "NO" goto version_information_en
goto version_information_en_failed

:version_information_en_failed
Title Version-information
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Version-information
echo.
echo Version: 1.3.5
echo Platform: Windows
echo Release date: 7-5-2024
echo Made by: Sem Boven
echo.
echo Update-information:
echo Fixed bug 
echo Sorry, that's not an answer. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Do you want to go back?:"
if "%input%" == "yes" goto settings_en
if "%input%" == "Yes" goto settings_en
if "%input%" == "YES" goto settings_en
if "%input%" == "no" goto version_information_en
if "%input%" == "No" goto version_information_en
if "%input%" == "NO" goto version_information_en
goto version_information_en_failed

:exit_en
Title Exit
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Exit
echo Are you sure you want to exit?
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Enter your answer:"
if "%input%" == "yes" exit
if "%input%" == "Yes" exit
if "%input%" == "YES" exit
if "%input%" == "no" goto menu_en
if "%input%" == "No" goto menu_en
if "%input%" == "NO" goto menu_en
goto exit_en_failed

:exit_en_failed
Title Exit
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Exit
echo Are you sure you want to exit?
echo Sorry, that's not an answer. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Enter your answer:"
if "%input%" == "yes" exit
if "%input%" == "Yes" exit
if "%input%" == "YES" exit
if "%input%" == "no" goto menu_en
if "%input%" == "No" goto menu_en
if "%input%" == "NO" goto menu_en
goto exit_en_failed

:error_en
Title Error
cls
echo --------------------------------------------------
echo                                      %date%
echo. 
echo Error.
echo Page does not exist (anymore).
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Do you want to go back to the menu?:"
if "%input%" == "yes" goto menu_en
if "%input%" == "Yes" goto menu_en
if "%input%" == "YES" goto menu_en
if "%input%" == "secret" goto secret_menu_en
goto error_en

:secret_menu_en
Title ???
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Welcome to the secret menu.
echo Where do you want to go?
echo.
echo 1: Shutdown
echo 2: Restart
echo 3: Log out
echo 4: Menu Lite Preview
echo 5: Back to the menu
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which page do you choose?:"
if "%input%" == "1" goto shutdown_en
if "%input%" == "shutdown" goto shutdown_en
if "%input%" == "Shutdown" goto shutdown_en
if "%input%" == "SHUTDOWN" goto shutdown_en
if "%input%" == "2" goto restart_en
if "%input%" == "restart" goto restart_en
if "%input%" == "Restart" goto restart_en
if "%input%" == "RESTART" goto restart_en
if "%input%" == "3" goto logout_en
if "%input%" == "log out" goto logout_en
if "%input%" == "Log out" goto logout_en
if "%input%" == "Log Out" goto logout_en
if "%input%" == "LOG OUT" goto logout_en
if "%input%" == "4" goto menu_lite_preview_en
if "%input%" == "menu lite preview" goto menu_lite_preview_en
if "%input%" == "Menu lite preview" goto menu_lite_preview_en
if "%input%" == "Menu Lite Preview" goto menu_lite_preview_en
if "%input%" == "MENU LITE PREVIEW" goto menu_lite_preview_en
if "%input%" == "5" goto menu_en
if "%input%" == "back to the menu" goto menu_en
if "%input%" == "Back to the menu" goto menu_en
if "%input%" == "Back To The Menu" goto menu_en
if "%input%" == "BACK TO THE MENU" goto menu_en
goto error_en

:shutdown_en
Title Shutdown
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Shutdown
echo Are you sure you want to shutdown?
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Enter your answer:"
if "%input%" == "yes" shutdown /s /t 0
if "%input%" == "Yes" shutdown /s /t 0
if "%input%" == "YES" shutdown /s /t 0
if "%input%" == "no" goto secret_menu_en
if "%input%" == "No" goto secret_menu_en
if "%input%" == "NO" goto secret_menu_en
goto shutdown_en_failed

:shutdown_en_failed
Title Shutdown
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Shutdown
echo Are you sure you want to shutdown?
echo Sorry, that's not an answer. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Enter your answer:"
if "%input%" == "yes" shutdown /s /t 0
if "%input%" == "Yes" shutdown /s /t 0
if "%input%" == "YES" shutdown /s /t 0
if "%input%" == "no" goto secret_menu_en
if "%input%" == "No" goto secret_menu_en
if "%input%" == "NO" goto secret_menu_en
goto shutdown_en_failed

:restart_en
Title Restart
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Restart
echo Are you sure you want to restart?
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Enter your answer:"
if "%input%" == "yes" shutdown /r /t 0
if "%input%" == "Yes" shutdown /r /t 0
if "%input%" == "YES" shutdown /r /t 0
if "%input%" == "no" goto secret_menu_en
if "%input%" == "No" goto secret_menu_en
if "%input%" == "NO" goto secret_menu_en
goto restart_en_failed

:restart_en_failed
Title Restart
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Restart
echo Are you sure you want to restart?
echo Sorry, that's not an answer. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Enter your answer:" 
if "%input%" == "yes" shutdown /r /t 0
if "%input%" == "Yes" shutdown /r /t 0
if "%input%" == "YES" shutdown /r /t 0
if "%input%" == "no" goto secret_menu_en
if "%input%" == "No" goto secret_menu_en
if "%input%" == "NO" goto secret_menu_en
goto restart_en_failed

:logout_en
Title Log out
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Log out
echo Are you sure you want to log out?
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Enter your answer:" 
if "%input%" == "yes" shutdown /l /t 0
if "%input%" == "Yes" shutdown /l /t 0
if "%input%" == "YES" shutdown /l /t 0
if "%input%" == "no" goto secret_menu_en
if "%input%" == "No" goto secret_menu_en
if "%input%" == "NO" goto secret_menu_en
goto logout_en_failed

:logout_en_failed
Title Log out
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Log out
echo Are you sure you want to log out?
echo Sorry, that's not an answer. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Enter your answer:"
if "%input%" == "yes" shutdown /l /t 0
if "%input%" == "Yes" shutdown /l /t 0
if "%input%" == "YES" shutdown /l /t 0
if "%input%" == "no" goto secret_menu_en
if "%input%" == "No" goto secret_menu_en
if "%input%" == "NO" goto secret_menu_en
goto logout_en_failed

:menu_lite_preview_en
Title Menu Lite Preview
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Menu Lite Preview
echo Which version do you want to play?
echo.
echo 1: Menu Lite Beta
echo 2: Menu Lite 2.0 Pre-Release
echo 3: Back
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which version do you want to play?:"
if "%input%" == "1" goto start_menu_lite_beta_en
if "%input%" == "menu lite beta" goto start_menu_lite_beta_en
if "%input%" == "Menu lite beta" goto start_menu_lite_beta_en
if "%input%" == "Menu Lite Beta" goto start_menu_lite_beta_en
if "%input%" == "MENU LITE BETA" goto start_menu_lite_beta_en
if "%input%" == "2" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "menu lite 2.0 pre-release" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "Menu lite 2.0 pre-release" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "Menu Lite 2.0 Pre-Release" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "MENU LITE 2.0 PRE-RELEASE" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "3" goto secret_menu_en
if "%input%" == "back" goto secret_menu_en
if "%input%" == "Back" goto secret_menu_en
if "%input%" == "BACK" goto secret_menu_en
goto menu_lite_preview_en_failed

:menu_lite_preview_en_failed
Title Menu Lite Preview
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Menu Lite Preview
echo Which version do you want to play?
echo.
echo 1: Menu Lite Beta
echo 2: Menu Lite 2.0 Pre-Release
echo 3: Back
echo Sorry, that's not a version. Try again.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which version do you want to play?:"
if "%input%" == "1" goto start_menu_lite_beta_en
if "%input%" == "menu lite beta" goto start_menu_lite_beta_en
if "%input%" == "Menu lite beta" goto start_menu_lite_beta_en
if "%input%" == "Menu Lite Beta" goto start_menu_lite_beta_en
if "%input%" == "MENU LITE BETA" goto start_menu_lite_beta_en
if "%input%" == "2" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "menu lite 2.0 pre-release" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "Menu lite 2.0 pre-release" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "Menu Lite 2.0 Pre-Release" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "MENU LITE 2.0 PRE-RELEASE" goto start_menu_lite_2.0_pre-release_en
if "%input%" == "3" goto secret_menu_en
if "%input%" == "back" goto secret_menu_en
if "%input%" == "Back" goto secret_menu_en
if "%input%" == "BACK" goto secret_menu_en
goto menu_lite_preview_en_failed

:start_menu_lite_beta_en
start cmd /k ".\Menu Lite Beta.bat" & goto menu_lite_preview_en

:start_menu_lite_2.0_pre-release_en
start cmd /k ".\Menu Lite 2.0 Pre-Release.bat" & goto menu_lite_preview_en