//
//  ADViewController.m
//  iFruit
//
//  Created by NRHVietNam on 4/10/15.
//  Copyright (c) 2015 Nightelf. All rights reserved.
//

#import "ADViewController.h"

@interface ADViewController ()

@end

@implementation ADViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createAndLoadInterstitial];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - addmob fullscreen
- (void)interstitial:(GADInterstitial *)interstitial
didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"interstitialDidFailToReceiveAdWithError: %@", [error localizedDescription]);
}

- (void)interstitialDidDismissScreen:(GADInterstitial *)interstitial {
    NSLog(@"interstitialDidDismissScreen");
    [self createAndLoadInterstitial];
}

- (void)createAndLoadInterstitial {
    self.interstitial = [[GADInterstitial alloc] init];
    self.interstitial.adUnitID = ADMOB_FULLSCREEN_KEY;
    self.interstitial.delegate = self;
    
    GADRequest *request = [GADRequest request];
    [self.interstitial loadRequest:request];
}

- (void)showAdd {
    
    if (self.interstitial.isReady) {
        [self.interstitial presentFromRootViewController:self];
    }
}

- (void) hideAdmobBanner{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (void) showAdmobBanner{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
//    [self createAndLoadInterstitial];
    int randNum = rand() % 5;
    [self performSelector:@selector(showAdd) withObject:self afterDelay:randNum];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
