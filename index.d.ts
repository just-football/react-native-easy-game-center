declare module 'react-native-game-center-auth' {
    export interface GameCenterUser {
        playerID: string;
        displayName: string;
        alias: string;
    }

    export class GCAuth {
        authenticate: () => Promise<GameCenterUser>;
    }
    
    export default GCAuth;
}
