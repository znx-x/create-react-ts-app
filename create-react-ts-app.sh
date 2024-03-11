#!/bin/bash

# Function to set the application name
set_app_name() {
    clear
    echo "Create a New ReactJS - TypeScript Application"
    read -p "Application Name: " appName
}

# Function to confirm the application name
set_app_name_confirmation() {
    clear
    echo "A folder with the name \"$appName\" will be created to"
    echo "house your application files. Do you want to continue?"
    echo
    read -p "y-[yes]   n-[no]   r-[rename]: " confirmation

    case "$confirmation" in
        [yY])
            create_app
            ;;
        [rR])
            set_app_name
            set_app_name_confirmation
            ;;
        [nN])
            echo "The script will exit."
            read -n 1 -s -r -p "Press any key to continue."
            exit 0
            ;;
        *)
            echo "Invalid response. Try again."
            set_app_name_confirmation
            ;;
    esac
}

# Function to create the app and open its directory
create_app() {
    # First, create the new ReactJS App using 'npx'
    npx create-react-app "$appName" --template typescript
    # Navigate to the application folder
    cd "$appName"
    # Now, verify types and install the types using 'npm' if there
    # are any dependencies missing.
    npm install --save typescript @types/node @types/react @types/react-dom @types/jest
    echo "Press any key to exit."
    read -n 1 -s -r
    cd ../
    if [[ "$OSTYPE" == "darwin"* ]]; then
        open "$appName"
    else
        xdg-open "$appName"
    fi
}

# Start the script
set_app_name
set_app_name_confirmation
