//
//  HomeListSupplementView.h
//  iTravel
//
//  Created by Changling on 2018/8/13.
//  Copyright © 2018 Changling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeListSupplementView : UICollectionReusableView

@property (weak, nonatomic) IBOutlet UILabel *headerName;

-(void)setHeader:(NSString*)string;
+(NSString *)reuseIdentifer;
+ (UINib *)nib;

@end
