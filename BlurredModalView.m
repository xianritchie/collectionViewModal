//
//  blurredView.m
//  CollectionViewModal
//
//  Created by Ritchie, Christian {BIS} on 7/7/14.
//  Copyright (c) 2014 BIS Innovation. All rights reserved.
//

#import "BlurredModalView.h"
#import "ColorHelper.h"

@implementation BlurredModalView {
    UIView *modalView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:0.1f green:0.1f blue:0.1f alpha:0.5f];
    }
    return self;
}


-(void)createModalViewWithInitialFrame:(CGRect)frame xOffset:(CGFloat)xOffset yOffset:(CGFloat)yOffset {
    
    
    modalView = [[UIView alloc] initWithFrame:frame];
    modalView.backgroundColor = [ColorHelper makeRGBAColor:@[@140, @89, @182, @1]];
    [self addSubview:modalView];
    
    CGRect modalRect = CGRectMake(xOffset, yOffset, self.frame.size.width - xOffset * 2, self.frame.size.height - yOffset*2);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.layer.cornerRadius = 25;
    button.frame = modalView.frame;
    [button setTitle:@"X" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor whiteColor];
    button.titleLabel.textColor = [UIColor whiteColor];
    [button addTarget:self action:@selector(killModal:) forControlEvents:UIControlEventTouchUpInside];
    [modalView addSubview:button];
    [UIView animateWithDuration:0.5 animations:^{
        modalView.frame = modalRect;
        modalView.layer.cornerRadius = 10;
        button.frame = CGRectMake(modalView.frame.size.width - xOffset, 30, 50, 50);
    }];
    
    
}

-(IBAction)killModal:(id)sender {
    [self removeFromSuperview];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
