// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#import "nativium/net/http/NTVHttpRequest.h"
#import "nativium/net/http/NTVHttpResponse.h"
#import <Foundation/Foundation.h>

@interface NTVHttpClientLogger : NSObject

- (void)onRequest:(nonnull NTVHttpRequest *)request;

- (void)onResponse:(nonnull NTVHttpRequest *)request
          response:(nonnull NTVHttpResponse *)response;

@end
