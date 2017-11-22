
# react-native-game-center-auth

## Getting started

`$ npm install react-native-game-center-auth --save`

### Mostly automatic installation

`$ react-native link react-native-game-center-auth`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-game-center-auth` and add `RNGameCenterAuth.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNGameCenterAuth.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNGameCenterAuthPackage;` to the imports at the top of the file
  - Add `new RNGameCenterAuthPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-game-center-auth'
  	project(':react-native-game-center-auth').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-game-center-auth/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-game-center-auth')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNGameCenterAuth.sln` in `node_modules/react-native-game-center-auth/windows/RNGameCenterAuth.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Game.Center.Auth.RNGameCenterAuth;` to the usings at the top of the file
  - Add `new RNGameCenterAuthPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNGameCenterAuth from 'react-native-game-center-auth';

// TODO: What to do with the module?
RNGameCenterAuth;
```
  