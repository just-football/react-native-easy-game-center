
# react-native-easy-game-center

## Getting started

`$ npm install react-native-easy-game-center --save`

### Mostly automatic installation

`$ react-native link react-native-easy-game-center`

### Usage

```ts
import GameGenter from 'react-native-easy-game-center';

try {
  await GameCenter.loginPlayerToGameCenter();
} catch (ex) {
  //breaks when they decline
}

