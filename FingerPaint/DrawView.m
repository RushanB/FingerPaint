//
//  DrawView.m
//  FingerPaint
//
//  Created by Rushan on 2017-05-12.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView


-(instancetype)initWithFrame:(CGRect)frame{ //first path
    self = [super initWithFrame:frame];
    if(self){
        [self setMultipleTouchEnabled:NO];
        [self setBackgroundColor:[UIColor whiteColor]];
        
        _path = [[UIBezierPath alloc]init];
        _lineColor = [UIColor redColor];
    }
    return self;
}


-(instancetype)initWithCoder:(NSCoder *)coder{ //second path
    self = [super initWithCoder:coder];
    if(self) {
        [self setMultipleTouchEnabled:NO];
        [self setBackgroundColor:[UIColor whiteColor]];
        _path = [[UIBezierPath alloc]init];
    }
    return self;
}
 

- (void)drawRect:(CGRect)rect {
    [self.lineColor setStroke];  //sets stroke
    [self.path setLineWidth:3.0]; //sets line width
    [self.path stroke];    //moves stroke to path

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    [self.path moveToPoint:point];  //path returns point
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    [self.path addLineToPoint:point]; //path returns point
    [self setNeedsDisplay]; //put to display
}

@end
