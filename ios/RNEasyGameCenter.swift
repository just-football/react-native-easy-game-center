//
//  RNGameCenterAuth.swift
//  RNGameCenterAuth
//
//  Created by justfootball on 2017-11-07.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import GameKit

@objc(RNEasyGameCenter)
class RNEasyGameCenter: NSObject {
    @objc func setup(_ resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) -> Void {
        
        print(" calling sety")
        guard let rnView = UIApplication.shared.keyWindow?.rootViewController else {
            return reject("ReactNativeEasyGameCenter", "no main root view", nil)
        }

        EGC.sharedInstance(rnView)
        EGC.debugMode = true
        resolve(nil)
    }

    @objc func isAuthenticated(_ resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) -> Void {
        resolve(EGC.isPlayerIdentified)
    }

    @objc func getPlayer(_ resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) -> Void {
        var dict:[String:String] = [:]

        dict["playerID"] = EGC.localPayer.playerID

        resolve(dict)
    }

    @objc func loginPlayerToGameCenter(_ resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        var called = false

        EGC.loginPlayerToGameCenter { worked in
            guard called == false else {
                return
            }

            called = true

            if worked! {
                return resolve(worked!)
            } else {
                return reject("ReactNativeEasyGameCenter", "login failed", nil)
            }
        }
    }
}
