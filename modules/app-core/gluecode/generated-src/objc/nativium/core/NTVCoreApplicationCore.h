// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#import "nativium/domain/NTVDomainCustomer.h"
#import "nativium/domain/NTVDomainDeviceData.h"
#import "nativium/domain/NTVDomainInitializationData.h"
#import <Foundation/Foundation.h>
@class NTVCoreApplicationCore;

@interface NTVCoreApplicationCore : NSObject

+ (nullable NTVCoreApplicationCore *)shared;

- (void)initialize:(nonnull NTVDomainInitializationData *)initializationData
        deviceData:(nonnull NTVDomainDeviceData *)deviceData;

- (nonnull NTVDomainInitializationData *)getInitializationData;

- (nonnull NTVDomainDeviceData *)getDeviceData;

- (nonnull NTVDomainCustomer *)getCustomer;

- (void)setCustomer:(nonnull NTVDomainCustomer *)customer;

- (nonnull NSString *)getVersion;

@end
