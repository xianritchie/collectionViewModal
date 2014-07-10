//
//  ColorHelper.m
//  CollectionViewModal
//
//  Created by Ritchie, Christian {BIS} on 7/8/14.
//  Copyright (c) 2014 BIS Innovation. All rights reserved.
//

#import "ColorHelper.h"

@implementation ColorHelper

+(UIColor *)makeRGBAColor:(NSArray *)colorValues {
    
    CGFloat redValue, greenValue, blueValue, alphaValue;
    
    if (colorValues == nil) {
        return [UIColor whiteColor];
    }
    
    if (colorValues[0]) {
        NSNumber *red = [colorValues objectAtIndex:0];
        if ([red floatValue] >= 0 && [red floatValue] <= 255) {
            redValue =  [red floatValue] / 255.0f;
        } else {
            redValue = 255.0f;
        }
        
    }
    
    if (colorValues[1]) {
        NSNumber *green = [colorValues objectAtIndex:1];
        if ([green floatValue] >= 0 && [green floatValue] <= 255) {
            greenValue =  [green floatValue] / 255.0f;
            NSLog(@"Green value: %@, %f", green, greenValue);
        } else {
            greenValue = 255.0f;
        }
    }
    
    if (colorValues[2]) {
        NSNumber *blue = [colorValues objectAtIndex:2];
        if ([blue floatValue] >= 0 && [blue floatValue] <= 255) {
            blueValue =  [blue floatValue] / 255.0f;
            NSLog(@"Blue value: %@, %f", blue, blueValue);
        } else {
            blueValue = 255.0f;
        }
    }
    
    if (colorValues[3]) {
        NSNumber *alpha = [colorValues objectAtIndex:3];
        if ([alpha floatValue] >= 0 && [alpha floatValue] <= 1) {
            alphaValue = [alpha floatValue];
            NSLog(@"Alpha value: %@, %f", alpha, alphaValue);
        } else {
            alphaValue = 1.0f;
        }
        
    }
    
    UIColor *rgbColor = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:alphaValue];
    return rgbColor;
}

@end
