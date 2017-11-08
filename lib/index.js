import { 
    NativeModules, 
    NativeEventEmitter, 
    Linking,
    Platform,
} from 'react-native';

const { RNReactNativeGameCenterAuthentication } = NativeModules;

const ALLOWED_EVENTS = {
    GAME_CENTER_COMPLETE: 'GameCenterComplete',
};

export default class GCAuth {
    constructor() {
        this.emitter = new NativeEventEmitter(RNReactNativeGameCenterAuthentication)
    }

    authenticate = async () => {    
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

            if (Platform.OS === 'ios') {
                RNReactNativeGameCenterAuthentication.authenticate();
            } else {
                RNReactNativeGameCenterAuthentication.authenticate(
                    (o) => console.log(o),
                    (e) => console.log(e),
                );
            }
        });
    }
}