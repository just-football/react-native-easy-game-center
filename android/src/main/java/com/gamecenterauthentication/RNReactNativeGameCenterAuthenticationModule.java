
package com.gamecenterauthentication;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import android.util.Log;

public class RNReactNativeGameCenterAuthenticationModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public RNReactNativeGameCenterAuthenticationModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNReactNativeGameCenterAuthentication";
    }

    @ReactMethod
    public void authenticate() {
        Log.v("kek", "Auth yolo swag kek");
    }
}