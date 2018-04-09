#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTModuleMethod.h>

@interface RCT_EXTERN_MODULE(RNEasyGameCenter, NSObject)

RCT_EXTERN_METHOD(
    isAuthenticated:(RCTPromiseResolveBlock)resolve
    rejecter:(RCTPromiseRejectBlock)reject
)

RCT_EXTERN_METHOD(
    setup:(RCTPromiseResolveBlock)resolve
    rejecter:(RCTPromiseRejectBlock)reject
)

RCT_EXTERN_METHOD(
    loginPlayerToGameCenter:(RCTPromiseResolveBlock)resolve
    rejecter:(RCTPromiseRejectBlock)reject
)

RCT_EXTERN_METHOD(
    getPlayer:(RCTPromiseResolveBlock)resolve
    rejecter:(RCTPromiseRejectBlock)reject
)

@end
