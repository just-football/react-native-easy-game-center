package com.gamecenterauthentication;

import com.google.android.gms.common.api.GoogleApiClient;

public class RNReactNativeGameCenterAuthentication {
    private GoogleApiClient mClient;

    public String authenticate() {
        print("KEK", this.mClient.isConnected());
        return "kek";
    }
}