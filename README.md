# react-native-game-center-authentication

## Getting started

`npm install react-native-game-center-authentication --save` 

or 

`yarn add react-native-game-center-authentication`

### Automatic installation

`react-native link react-native-game-center-authentication`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-game-center-authentication` and add `RNReactNativeGameCenterAuthentication.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeGameCenterAuthentication.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeGameCenterAuthenticationPackage;` to the imports at the top of the file
  - Add `new RNReactNativeGameCenterAuthenticationPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-game-center-authentication'
  	project(':react-native-game-center-authentication').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-game-center-authentication/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-game-center-authentication')
  	```

## Usage
```javascript
import GCAuth from 'react-native-game-center-authentication';

const gamecenter = new GCAuth();

gamecenter.authenticate()
.then((user) => {
	console.log(user);
})
```

The module isn't build using typescript but comes with types included in index.d.ts.

## ToDo
- [ ] Change the namespacing from `RNReactNative...` to `RN...` only