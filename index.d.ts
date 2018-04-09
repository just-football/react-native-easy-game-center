declare module 'react-native-easy-game-center' {
    export interface GameCenterUser {
        playerID: string;
        displayName: string;
        alias: string;
    }

    class Client {
        setup(): Promise<void>;
        loginPlayerToGameCenter(): Promise<void>;
        isAuthenticated(): Promise<boolean>;
        getPlayer(): Promise<GameCenterUser>;
    }

    export default new Client;
}
