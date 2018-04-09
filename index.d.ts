declare module 'react-native-easy-game-center' {
    export interface GameCenterUser {
        playerID: string;
        displayName: string;
        alias: string;
    }

    interface EGC {
        setup: () => Promise<void>;
        isAuthenticated: () => Promise<boolean>;
        getPlayer: () => Promise<GameCenterUser>;
        loginPlayerToGameCenter: () => Promise<boolean>;
    }

    export default EGC;
}
