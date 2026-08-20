#import <Foundation/Foundation.h>

@class AWMSDKConfigure;

@interface HJAdsSdk : NSObject
+(instancetype) sharedAds;
-(void)setupSDKWithAppId:(NSString *)appId;
-(void)setDebugEnable:(BOOL)enable;
-(void) startAdPreviously:(NSString *)rewardId interstitialId:(NSString *)interstitialId fullScreenId:(NSString *)fullScreenId userId:(NSString *)userId;
@end

@interface HJAdsSdk (PreInit)
/// Initialize the SDK with ADN configurations that need to be registered in advance.
/// Call this method instead of `setupSDKWithAppId:`; do not call both methods.
-(void)setupSDKWithAppId:(NSString *)appId
           sdkConfigures:(NSArray<AWMSDKConfigure *> *)sdkConfigures;
@end
