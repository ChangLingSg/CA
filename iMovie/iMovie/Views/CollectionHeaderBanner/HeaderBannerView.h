//
//  HeaderBannerView.h
//  iTravel
//
//  Created by Changling on 2018/8/20.
//  Copyright © 2018 Changling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderBannerView : UICollectionReusableView
- (void)setArrContent:(NSArray *)items autoRun:(BOOL)isauto repeat:(BOOL)isrepeat;

@property (nonatomic,copy) void (^selectItemBlock)(NSInteger index);
@end
