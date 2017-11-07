QUICK NOTES

~~~~
#ios and android
react-native-link react-native-game-center-authentication
~~~~


# react-native-react-native-game-center-authentication

## Getting started

`$ npm install react-native-react-native-game-center-authentication --save`

### Mostly automatic installation

`$ react-native link react-native-react-native-game-center-authentication`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-react-native-game-center-authentication` and add `RNReactNativeGameCenterAuthentication.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeGameCenterAuthentication.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeGameCenterAuthenticationPackage;` to the imports at the top of the file
  - Add `new RNReactNativeGameCenterAuthenticationPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-react-native-game-center-authentication'
  	project(':react-native-react-native-game-center-authentication').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-react-native-game-center-authentication/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-react-native-game-center-authentication')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNReactNativeGameCenterAuthentication.sln` in `node_modules/react-native-react-native-game-center-authentication/windows/RNReactNativeGameCenterAuthentication.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using React.Native.Game.Center.Authentication.RNReactNativeGameCenterAuthentication;` to the usings at the top of the file
  - Add `new RNReactNativeGameCenterAuthenticationPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNReactNativeGameCenterAuthentication from 'react-native-react-native-game-center-authentication';

// TODO: What to do with the module?
RNReactNativeGameCenterAuthentication;
```
  