declare module 'react-native-easy-game-center' {
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
