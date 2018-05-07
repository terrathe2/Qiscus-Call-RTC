//
//  MainApp.m
//  Qiscus_VideoCall_IOS
//
//  Created by Qlue Indonesia on 07/05/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(QiscusVC, NSObject)

//RCT_EXTERN_METHOD(showAlert:(NSString *) message
//                  title: (NSString *) title
//                  body:(NSString *) body)
RCT_EXTERN_METHOD(incomingCall:())

@end
