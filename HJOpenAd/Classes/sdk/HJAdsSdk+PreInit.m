#import "HJAdsSdk.h"

#import <WindMillSDK/WindMillSDK.h>

@implementation HJAdsSdk (PreInit)

- (void)setupSDKWithAppId:(NSString *)appId
            sdkConfigures:(NSArray<AWMSDKConfigure *> *)sdkConfigures {
    NSString *sdkAppId = [appId copy];
    NSArray<AWMSDKConfigure *> *configures = [sdkConfigures copy];
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0), ^{
        [WindMillAds setupSDKWithAppId:sdkAppId sdkConfigures:configures];
    });
}

@end
