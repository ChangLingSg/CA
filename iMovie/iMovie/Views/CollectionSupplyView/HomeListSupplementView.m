//
//  HomeListSupplementView.m
//  iTravel
//
//  Created by Changling on 2018/8/13.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "HomeListSupplementView.h"

@implementation HomeListSupplementView

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setHeader:(NSString*)string{
    self.headerName.text = string;
}

+(NSString *)reuseIdentifer{
    return NSStringFromClass([self class]);
}

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([HomeListSupplementView class])
                          bundle:[NSBundle bundleForClass:[HomeListSupplementView class]]];
}


@end
