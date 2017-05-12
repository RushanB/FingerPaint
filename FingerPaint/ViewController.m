//
//  ViewController.m
//  FingerPaint
//
//  Created by Rushan on 2017-05-12.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"

@interface ViewController () <UIPickerViewDataSource,UIPickerViewDelegate> //to get color picker methods

@property (strong, nonatomic) IBOutlet DrawView *drawView;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGesture;
@property (weak, nonatomic) IBOutlet UIPickerView *colorPicker;
@property (nonatomic, strong) NSArray *colors;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad]; //loads view
    self.colorPicker.delegate = self; //set color delegate
    [self.view addSubview:self.colorPicker]; //add color picker delegate to view
    [self.colorPicker setHidden:YES]; //set color picker to hidden
    self.colors = [[NSArray alloc] initWithObjects:@"Red",@"Green",@"Blue",@"Black",@"Orange",@"Yellow",nil];
    
}
- (IBAction)pressForColor:(id)sender {
    [self.colorPicker setHidden:NO]; 
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1; //only holds color
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 6;  //max
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{ //fills rows with titles
    return [self.colors objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{//sets color from color picker
    switch(row) {
        case 0:
            self.drawView.lineColor = [UIColor redColor];
            break;
        case 1:
            self.drawView.lineColor = [UIColor greenColor];
            break;
        case 2:
            self.drawView.lineColor = [UIColor blueColor];
            break;
        case 3:
            self.drawView.lineColor = [UIColor blackColor];
            break;
        case 4:
            self.drawView.lineColor = [UIColor orangeColor];
            break;
        case 5:
            self.drawView.lineColor = [UIColor yellowColor];
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
