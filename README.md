# Create ReactJS/TS Application

This repository contains simplified scripts for creating new ReactJS/TypeScript applications compatible with Windows, macOS, and Linux.

## Requirements

- Git (for cloning, although direct download is also an option)
- Node.js Installed (version 18+ recommended)
- `npm` Installed

## Usage with Windows

First, clone the repository using the following Git command in your terminal:

```cmd
git clone https://github.com/znx-x/create-react-ts-app.git
```

Navigate into the newly created folder and execute the create-react-ts-app.cmd script. If you prefer to use your terminal, you can initiate the script with the command below:

```cmd
cd create-react-ts-app ; .\create-react-ts-app.cmd
```

You will be prompted to name your application. Once confirmed, the script will create a subdirectory for your new app and install all necessary dependencies, allowing you to start coding immediately.

## Usage with Linux and macOS

Clone the repository using the following Git command in your terminal:

```shell
git clone https://github.com/znx-x/create-react-ts-app.git
```

Navigate to the cloned repository and execute the script using the command:

```shell
cd create-react-ts-app && sudo bash create-ereact-ts-app.sh
```

To execute the script without `sudo` privileges, simply remove the `sudo` prefix from the command. Note that this may cause issues if your user does not have sufficient permissions to create the new application.

You will be prompted to name your application. Once confirmed, the script will create a subdirectory for your new app and install all necessary dependencies, enabling you to begin development without delay.

## Important Remarks & Disclaimers

- The script creates a subdirectory for each application you generate.
- The new application folders are standalone, allowing you to move them out of the original directory as needed.
- This script merely simplifies the process of initiating a new ReactJS/TypeScript application; the same result can be achieved by manually entering the `npx` and `npm` commands in your terminal.
- Feel free to modify the scripts to suit your preferences, such as using yarn instead of npm.
- This code is distributed on an "as is" basis, without warranties of any kind.