(Menu Lite Beta. ©Sem Noah Boven. All rights reserved.)
@echo off
:menu_logo
Title Menu Lite Beta
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
echo   Lite Beta                                                                                   Copyright Sem Noah Boven
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
if "%input%" == "Lite-2024!" goto menu_nl
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
if "%input%" == "Lite-2024!" goto menu_nl
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
echo 2: Instellingen
echo 3: Stoppen
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Welke pagina kies je?:"
if "%input%" == "1" goto games_nl
if "%input%" == "2" goto settings_nl
if "%input%" == "3" exit
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
if "%input%" == "Lite-2024!" goto menu_en
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
if "%input%" == "Lite-2024!" goto menu_en
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
echo 2: Settings
echo 3: Exit
echo.
echo                           Copyright Sem Noah Boven
echo --------------------------------------------------
set /p input="Which page do you choose?:"
if "%input%" == "1" goto games_en
if "%input%" == "2" goto settings_en
if "%input%" == "3" exit
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