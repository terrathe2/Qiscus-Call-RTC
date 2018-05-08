//
//  QiscusCall.m
//  Qiscus_VideoCall_IOS
//
//  Created by Qiscus on 07/05/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "QiscusCall.h"
#import <React/RCTLog.h>

@implementation QiscusCall

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(setup:(NSString *)appID appSecret:(NSString *)appSecret) {
  RCTLogInfo(@"setup Streaming %@", appID);
  self.client   = [QiscusRTC shared];
//  [QiscusRTC ini]

}

RCT_EXPORT_METHOD(register:(NSString *)appID appSecret:(NSString *)appSecret) {
  RCTLogInfo(@"setup Streaming %@", appID);
  self.client   = [QiscusRTC shared];
  //  [QiscusRTC ini]
  
}

RCT_EXPORT_METHOD(createStreaming:(NSString *)title tags:(NSDictionary<NSString *,id> *)tags callback:(RCTResponseSenderBlock)callback ) {
  RCTLogInfo(@"create Streaming");
  
//  [self.client createStreamWithTitle:title tags:tags completion:^(Stream *stream) {
//    RCTLogInfo(@"create Streaming %@", stream.streamUrl);
//
//    if (stream != NULL) {
//      callback(@[[NSNull null], stream.streamUrl]);
//    }else {
//      callback(@[[NSNull null], @"Error"]);
//    }
//  }];
};

RCT_EXPORT_METHOD(buildStreaming:(NSString *)url) {
  RCTLogInfo(@"build Streaming");
//  [self.client buildStreamWithStreamUrl:url completionHandler:^(UIViewController *target, NSError *error) {
//    dispatch_async(dispatch_get_main_queue(), ^{
//      
//      target.modalPresentationStyle = UIModalPresentationFullScreen;
//      AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//      [delegate.rootViewController presentViewController:target animated:YES completion:nil];
//    });
//  }];
}

@end
