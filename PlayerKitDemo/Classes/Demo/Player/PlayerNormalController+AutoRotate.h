//
// Created by majiancheng on 2018/1/6.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerNormalController.h"

@interface PlayerNormalController (AutoRotate)

- (BOOL)canRotate;

- (BOOL)isSizeClassRegular;

#pragma mark - IOS 5 Rotation

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration;

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation;

#pragma mark - IOS 6 Rotation

- (BOOL)shouldAutorotate;

- (UIInterfaceOrientationMask)supportedInterfaceOrientations;

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation;

#pragma IOS8 横竖屏

- (void)willTransitionToTraitCollection:(UITraitCollection *)newCollection withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator>)coordinator;

///////////////////////// 自定旋转方法 /////////////////////
- (void)rotate2PortraitFullScreen;

//横屏时切换竖屏
- (void)updatePlayerRegularHalf;

//竖屏时切换成横屏
- (void)updatePlayerRegular;

//横屏时切换竖屏
- (void)updatePlayerCompact;

@end