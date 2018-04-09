declare module 'react-native-easy-game-center' {
    export interface GameCenterUser {
        playerID: string;
        displayName: string;
        alias: string;
    }
    export function setup(): Promise<void>;
    export function isAuthenticated(): Promise<boolean>;
    export function getPlayer(): Promise<GameCenterUser>;
    export function loginPlayerToGameCenter(): Promise<boolean>;
}
