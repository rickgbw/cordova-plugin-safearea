// https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIScreen_Class/index.html
// http://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions


#import "SafeArea.h"
#import <Cordova/CDV.h>


@implementation SafeArea

- (NSDictionary*)screenProperties
{
    CGFloat topPadding = 0.0;
    CGFloat bottomPadding = 0.0;
    if (@available(iOS 11.0, *)) {
        UIWindow *window = UIApplication.sharedApplication.keyWindow;
        topPadding = window.safeAreaInsets.top;
        bottomPadding = window.safeAreaInsets.bottom;
    }

    NSString *saTopStr = [[NSNumber numberWithFloat:topPadding] stringValue];
    NSString *saBottomStr = [[NSNumber numberWithFloat:bottomPadding] stringValue];

    NSMutableDictionary* devProps = [NSMutableDictionary dictionaryWithCapacity:2];
    [devProps setObject:saTopStr forKey:@"top"];
    [devProps setObject:saBottomStr forKey:@"bottom"];

    NSDictionary* ret = [NSDictionary dictionaryWithDictionary:devProps];
    return ret;
}

- (void)get:(CDVInvokedUrlCommand*)command
{
    NSDictionary* screenProperties = [self screenProperties];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:screenProperties];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
