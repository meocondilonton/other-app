//
//  AppDelegate.h
//  iFruit
//
//  Created by mac on 13-10-25.
//  Copyright Nightelf 2013年. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"
#import <GoogleMobileAds/GoogleMobileAds.h>
#import <Parse/Parse.h>
#import "GAI.h"

// Added only for iOS 6 support
@interface MyNavigationController : UINavigationController <CCDirectorDelegate>
@end

@interface AppController : NSObject <UIApplicationDelegate, GADInterstitialDelegate>
{
	UIWindow *window_;
	MyNavigationController *navController_;

	CCDirectorIOS	*director_;							// weak ref
}

@property (nonatomic, retain) UIWindow *window;
@property (readonly) MyNavigationController *navController;
@property (readonly) CCDirectorIOS *director;

/// The interstitial ad.
@property(nonatomic, strong) GADInterstitial *interstitial;

- (void)hideAdmobBanner;
- (void)showAdmobBanner;

@end
