# SimpleLogin

A state-of-the-art Android Log-in App, with flutter and firebase with capabilities of OAUTH 2.0 google sign-in, facebook sign-in and normal sign in.

# Steps for using this app

## Method-1

- Use the APK link: https://drive.google.com/file/d/1LwZyE9av0E23oZhUc-urTEdZgR_cG4St/view?usp=drive_link.
- I strongly recommend using the APK link, as all you require is an android device, download the APK from the link after giving the permissions, and simply run the installed APK file.
- Unfortunately, I cannot provide a .yml file either as an installable environment as Android Studio and Java JDK is an essential component of the dependancies.
- This method is recommended as it is extremely cumbersome process to run all the required steps and run the app locally, as it involves complex steps like Configuring project to firebase, getting the SHA-1 and SHA-256 keys, updating the config files with the dependencies, each run is highly inefficient on storage and the build files generated are huge and hard to deal with in finite storage scenarios. And the worst of all, 'dependancy hell' which is a colloquial term used to refer to the un re-usability of code in different dependancy scenarios, as these programs are extremely sensitive to the gradle version, JDK version, android studio version, python version, and all the packages that go inside the building blocks of the program, in which the syntax can change and some libraries are unsupported/deprecated.

## Method-2

If you want to clone and use this app, then clone the repo by:  
`git clone https://github.com/Abhinav-Mahajan10/simplelogin`  
Then run the following steps.

### Preliminaries:

- Flutter should be installed (refer flutter docs: https://docs.flutter.dev/get-started/codelab) to get started with the installation and set up.
- `flutter doctor` should give no errors
- Android Studio should be installed.
- VSCode has all the dart plugins and extentions.
- Ensure your gradle version is upto date, flutter is running on the master channel, and flutter is fully upgraded and Android SDK is upto date.

### Step 1: Generate the SHA-1 key:

- First we have to generate the keystore file i.e., debug.keystore
  `keytool -genkey -v -keystore debug.keystore -alias androiddebugkey -storepass android -keypass android -keyalg RSA -keysize 2048 -validity 10000`
- You will be asked a few questions, then a debug.keystore file will be generate in the pwd in which the above code was run. Copy the debug.keystore file, navigate to the %USERPROFILE%/.android folder and paste the file in the directory.
- Then run the command
  `keytool -list -v -keystore "C:\Users\%USERPROFILE%\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android`
- Alternatively, follow this link: https://www.youtube.com/watch?v=wGOTwojezy8&ab_channel=BackslashFlutter

### Step 2: Complete the Firebase setup

First of all, complete the whole Firebase setup for **Android**, link is https://console.firebase.google.com/. You have to place the **google-services.json** file in the android folder of the project file.

> NOTE: USE THE SHA-1 GENERATED FROM YOUR SYSTEM

The following article is very helpful in setting it up: https://medium.com/flutter-community/flutter-implementing-google-sign-in-71888bca24ed

### Step 3: Configuring Facebook

- Open Facebook Developer (https://developers.facebook.com), login with your facebook credentials and Create an App.
- You will get an AppID and App Secret, save it with you.
- Go to firebase, go to authentication and select sign-in method.
- Select Facebook, and then then enter the AppID and App Secret when prompted.
- Now you will need to go to https://developers.facebook.com/docs/facebook-login/android, to take other actions that will enable you to Sign In through Facebook.
- Follow those steps closely and

### BONUS:

- https://stackoverflow.com/questions/73193526/app-not-active-this-app-is-not-currently-accessible-and-the-app-developer-is-aw, follow these simple steps as well, and this will prevent any future bugs of "facebook app not responsive".
- Download pubspec assist extention to help with dependancies and packages

### Step 4: Run the app

Now, you can run the app on your device using the command:

```bash
flutter packages get
flutter packages upgrade
flutter run
```
