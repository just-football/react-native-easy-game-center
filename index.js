import {
    NativeModules,
    NativeEventEmitter,
    Linking,
    Platform,
} from 'react-native';

const { RNGameCenterAuth } = NativeModules;

const ALLOWED_EVENTS = {
    GAME_CENTER_COMPLETE: 'GameCenterComplete',
};

export default class GCAuth {
    constructor() {
        this.emitter = new NativeEventEmitter(RNGameCenterAuth)
    }

    authenticate = async () => {
        if (Platform.OS !== 'ios') {
            console.error('Game Center only exists on iOS');
            return;
        }

        return new Promise((resolve, reject) => {
            const validateResolve = (gameCenterUser) => {
                if (
                    !gameCenterUser.playerID ||
                    !gameCenterUser.displayName ||
                    !gameCenterUser.alias ||
                    gameCenterUser.error
                ) {
                    return reject(null);
                }

                resolve(gameCenterUser);
            }

            const subscription = this.emitter.addListener(
                ALLOWED_EVENTS.GAME_CENTER_COMPLETE,
                validateResolve,
            );

            RNGameCenterAuth.authenticate();
        });
    }
}
