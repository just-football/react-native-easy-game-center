//
//  RNGameCenterAuth.swift
//  RNGameCenterAuth
//
//  Created by justfootball on 2017-11-07.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import GameKit

@objc(RNGameCenterAuth)
class RNGameCenterAuth: RCTEventEmitter {

    let GAME_CENTER_COMPLETE = "GameCenterComplete"

    override func supportedEvents() -> [String]! {
        return [self.GAME_CENTER_COMPLETE]
    }

    @objc func authenticate() -> Void {
        // Root React Native View
        let rnView = UIApplication.shared.keyWindow?.rootViewController

        // GC User Object
        let localPlayer: GKLocalPlayer = GKLocalPlayer.localPlayer()

        if (localPlayer.isAuthenticated) {
            self.success(gcPlayer: localPlayer)
        }

        localPlayer.authenticateHandler = {(GameCenterManager, error) -> Void in
            if (GameCenterManager != nil) {
                rnView!.present(GameCenterManager!, animated: true, completion: nil)
            } else if (localPlayer.isAuthenticated) {
                self.success(gcPlayer: localPlayer)
            } else {
                self.fail()
            }
        }
    }

    func fail() -> Void {
        self.sendEvent(withName: self.GAME_CENTER_COMPLETE, body: [
            "error": true
            ])
    }

    func success(gcPlayer: GKLocalPlayer) -> Void {
        let player: [String:Any] =  [
            "playerID": gcPlayer.playerID as String!,
            "displayName": gcPlayer.displayName as String!,
            "alias": gcPlayer.alias as String!
        ]
        self.sendEvent(withName: self.GAME_CENTER_COMPLETE, body: player)
    }
}
