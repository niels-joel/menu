(Menu Lite 2.0.0. ©Sem Noah Boven. All rights reserved.)
@echo off
:menu_logo
Title Menu Lite 2.0.0
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
echo   Lite 2.0.0                                                                                  Copyright Sem Noah Boven
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
if "%input%" == "2" goto password_en
goto :language_start

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
if "%input%" == "0000" goto new_edition_nl
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
if "%input%" == "0000" goto new_edition_nl
goto password_nl_failed

:new_edition_nl
Title Nieuwe editie
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Nieuwe editie!
echo.
echo Deze editie is bedoeld voor mensen die het
echo complexer willen.
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Wil je verder naar het menu?:"
if "%input%" == "y" goto menu_nl
if "%input%" == "n" goto new_edition_nl
goto new_edition_nl

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
echo 3: Instellingen
echo 4: Stoppen
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke pagina kies je?:"
if "%input%" == "1" goto games_nl
if "%input%" == "2" goto notepad_nl
if "%input%" == "3" goto settings_nl
if "%input%" == "4" exit
goto :error_nl

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
if "%input%" == "1" goto start_tictactoe_nl
if "%input%" == "2" goto menu_nl
goto :error_nl

:start_tictactoe_nl
start cmd /k ".\Other Files\Tic Tac Toe.bat" & goto games_nl

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
if "%input%" == "2" goto notepad_nl_2
if "%input%" == "3" goto notepad_nl_3
if "%input%" == "4" goto menu_nl
goto notepad_nl

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
if "%input%" == "2" goto notepad_nl
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
if "%input%" == "2" goto notepad_nl
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
if "%input%" == "2" goto notepad_nl
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
goto notepad_nl_3_edit

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
echo 3: Terug
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke pagina kies je?:"
if "%input%" == "3" goto menu_nl
if "%input%" == "1" goto language_nl
if "%input%" == "2" goto colors_nl
goto :error_nl

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
if "%input%" == "1" goto language_nl
if "%input%" == "2" goto language_en
goto :language_nl

:colors_nl
Title Kleuren
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Kies je kleuren.
echo De eerste kleur is de tekst
echo en de tweede kleur is de achtergrond.
echo Bijvoorbeeld: '1-7.'
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
if "%input%" == "1-2" color 64
if "%input%" == "1-3" color 24
if "%input%" == "1-4" color 14
if "%input%" == "1-5" color 74
if "%input%" == "1-6" color 84
if "%input%" == "1-7" color 04
if "%input%" == "2-1" color 46
if "%input%" == "2-3" color 26
if "%input%" == "2-4" color 16
if "%input%" == "2-5" color 76
if "%input%" == "2-6" color 86
if "%input%" == "2-7" color 06
if "%input%" == "3-1" color 42
if "%input%" == "3-2" color 62
if "%input%" == "3-4" color 12
if "%input%" == "3-5" color 72
if "%input%" == "3-6" color 82
if "%input%" == "3-7" color 02
if "%input%" == "4-1" color 41
if "%input%" == "4-2" color 61
if "%input%" == "4-3" color 21
if "%input%" == "4-5" color 71
if "%input%" == "4-6" color 81
if "%input%" == "4-7" color 01
if "%input%" == "5-1" color 47
if "%input%" == "5-2" color 67
if "%input%" == "5-3" color 27
if "%input%" == "5-4" color 17
if "%input%" == "5-6" color 87
if "%input%" == "5-7" color 07
if "%input%" == "6-1" color 48
if "%input%" == "6-2" color 68
if "%input%" == "6-3" color 28
if "%input%" == "6-4" color 18
if "%input%" == "6-5" color 78
if "%input%" == "6-7" color 08
if "%input%" == "7-1" color 40
if "%input%" == "7-2" color 60
if "%input%" == "7-3" color 20
if "%input%" == "7-4" color 10
if "%input%" == "7-5" color 70
if "%input%" == "7-6" color 80
if "%input%" == "7-7" goto colors_same_nl
if "%input%" == "8" goto settings_nl
goto :colors_nl

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
if "%input%" == "y" goto menu_nl
if "%input%" == "secret" goto secret_menu_nl
goto :error_nl

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
echo 4: Terug naar het menu
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke pagina kies je?:"
if "%input%" == "1" shutdown /s /t 0
if "%input%" == "2" shutdown /r /t 0
if "%input%" == "3" shutdown /l /t 0
if "%input%" == "4" goto menu_nl
goto :error_nl

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
if "%input%" == "0000" goto new_edition_en
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
if "%input%" == "0000" goto new_edition_en
goto password_en_failed

:new_edition_en
Title New edition
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo New edition!
echo.
echo This edition is intended for people who want it
echo more complex.
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Do you want to continue to the menu?:"
if "%input%" == "y" goto menu_en
if "%input%" == "n" goto whats_new_en
goto new_edition_en

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
echo 2: Kladblok
echo 3: Settings
echo 4: Exit
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which page do you choose?:"
if "%input%" == "1" goto games_en
if "%input%" == "2" goto notepad_en
if "%input%" == "3" goto settings_en
if "%input%" == "4" exit
goto :error_en

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
if "%input%" == "2" goto menu_en
goto :error_en

:start_tictactoe_en
start cmd /k ".\Other Files\Tic Tac Toe.bat" & goto games_en

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
if "%input%" == "2" goto notepad_en_2
if "%input%" == "3" goto notepad_en_3
if "%input%" == "4" goto menu_en
goto notepad_en

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
if "%input%" == "2" goto notepad_en
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
if "%input%" == "2" goto notepad_en
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
if "%input%" == "2" goto notepad_en
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
goto notepad_en_3_edit

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
echo 3: Back
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which page do you choose?:"
if "%input%" == "3" goto menu_en
if "%input%" == "1" goto language_en
if "%input%" == "2" goto colors_en
goto :error_en

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
if "%input%" == "1" goto language_nl
if "%input%" == "2" goto language_en
goto :language_en

:colors_en
Title Colors
cls
echo --------------------------------------------------
echo                                      %date%
echo.
echo Choose your colors.
echo The first color is the text
echo and the second color is the background.
echo For example: '1-7.'
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
if "%input%" == "1-2" color 64
if "%input%" == "1-3" color 24
if "%input%" == "1-4" color 14
if "%input%" == "1-5" color 74
if "%input%" == "1-6" color 84
if "%input%" == "1-7" color 04
if "%input%" == "2-1" color 46
if "%input%" == "2-3" color 26
if "%input%" == "2-4" color 16
if "%input%" == "2-5" color 76
if "%input%" == "2-6" color 86
if "%input%" == "2-7" color 06
if "%input%" == "3-1" color 42
if "%input%" == "3-2" color 62
if "%input%" == "3-4" color 12
if "%input%" == "3-5" color 72
if "%input%" == "3-6" color 82
if "%input%" == "3-7" color 02
if "%input%" == "4-1" color 41
if "%input%" == "4-2" color 61
if "%input%" == "4-3" color 21
if "%input%" == "4-5" color 71
if "%input%" == "4-6" color 81
if "%input%" == "4-7" color 01
if "%input%" == "5-1" color 47
if "%input%" == "5-2" color 67
if "%input%" == "5-3" color 27
if "%input%" == "5-4" color 17
if "%input%" == "5-6" color 87
if "%input%" == "5-7" color 07
if "%input%" == "6-1" color 48
if "%input%" == "6-2" color 68
if "%input%" == "6-3" color 28
if "%input%" == "6-4" color 18
if "%input%" == "6-5" color 78
if "%input%" == "6-7" color 08
if "%input%" == "7-1" color 40
if "%input%" == "7-2" color 60
if "%input%" == "7-3" color 20
if "%input%" == "7-4" color 10
if "%input%" == "7-5" color 70
if "%input%" == "7-6" color 80
if "%input%" == "8" goto settings_en
goto :colors_en

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
if "%input%" == "y" goto menu_en
if "%input%" == "secret" goto secret_menu_en
goto :error_en

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
echo 4: Back to the menu
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which page do you choose?:"
if "%input%" == "1" shutdown /s /t 0
if "%input%" == "2" shutdown /r /t 0
if "%input%" == "3" shutdown /l /t 0
if "%input%" == "4" goto menu_en
goto :error_en