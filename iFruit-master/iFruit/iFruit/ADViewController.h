//
//  ADViewController.h
//  iFruit
//
//  Created by NRHVietNam on 4/10/15.
//  Copyright (c) 2015 Nightelf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMobileAds/GoogleMobileAds.h>

@interface ADViewController : UIViewController<GADInterstitialDelegate>

/// The interstitial ad.
@property(nonatomic, strong) GADInterstitial *interstitial;

- (void)hideAdmobBanner;
- (void)showAdmobBanner;

@end
