declare module 'react-native-game-center-authentication' {
    export interface GameCenterUser {
        playerID: string;
        displayName: string;
        alias: string;
    }

    export class GCAuth {
        authenticate: () => Promise<GameCenterUser>;
    }
}