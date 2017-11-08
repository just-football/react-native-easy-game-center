# react-native-game-center-auth

## Getting started

`npm install react-native-game-center-auth --save` 

or 

`yarn add react-native-game-center-auth`

### Automatic installation

`react-native link react-native-game-center-auth`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-game-center-authentication` and add `RNReactNativeGameCenterAuthentication.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeGameCenterAuthentication.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<
1. 
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
