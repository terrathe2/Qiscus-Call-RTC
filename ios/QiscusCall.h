//
//  QiscusCall.h
//  Qiscus_VideoCall_IOS
//
//  Created by Qiscus on 07/05/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "React/RCTBridgeModule.h"
@import QiscusRTC;

@interface QiscusCall : NSObject <RCTBridgeModule>

@property QiscusRTC *client;

@end
