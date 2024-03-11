@Echo Off
:SET-APP-NAME
Cls
Echo Create a New ReactJS - TypeScript Application
Set /p "appName=Application Name: "
:SET-APP-NAME-CONFIRMATION
Cls
Echo A folder with the name "%appName%" will be created to
Echo house your application files. Do you want to continue?
Echo.
Set /P "confirmation=y-[yes]   n-[no]   r-[rename]: "
If /I "%confirmation%"=="y" (
    Goto CREATE-APP
)
If /I "%confirmation%"=="r" (
    Goto SET-APP-NAME
)
If /I "%confirmation%"=="n" (
    Echo The script will exit. Press any key to continue.
    Pause
    Exit
)
Echo Invalid response. Try again.
Goto SET-APP-NAME-CONFIRMATION

:CREATE-APP
:: First, create the new ReactJS App using 'npx'
npx create-react-app %appName% --template typescript
:: Navigate to the application folder
cd %appName%
:: Now, verify types and install the types using 'npm' if there
:: are any dependencies missing.
npm install --save typescript @types/node @types/react @types/react-dom @types/jest
Echo Press any key to exit.
Pause
Cd ../
Start "" "%CD%\%appName%"
