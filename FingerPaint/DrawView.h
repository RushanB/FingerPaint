//
//  DrawView.h
//  FingerPaint
//
//  Created by Rushan on 2017-05-12.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawView : UIView

@property (nonatomic, strong) UIBezierPath *path;
@property (nonatomic) UIColor *lineColor;

@end
