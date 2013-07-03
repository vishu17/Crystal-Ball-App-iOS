//
//  ViewController.m
//  CrystalBall
//
//  Created by Vishu Singh on 02/07/13.
//  Copyright (c) 2013 Vishu Singh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize predictionArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"bg.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.view insertSubview:imageView atIndex:0];
    UIView *catView = [[UIView alloc] addSubview:imageView];
//    [catView addSubview:imageView];
    
    self.predictionArray = [[NSArray alloc] initWithObjects:@"It is certain", @"It is decidedly so", @"All signs say YES", @"My reply is no", @"It is doubtful", @"Concentrate and ask again", nil];
    
    self.predictionColorArray = [[NSArray alloc] initWithObjects:[UIColor redColor],[UIColor greenColor],[UIColor blueColor], nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    NSUInteger color = arc4random_uniform(self.predictionColorArray.count);
//    UIColor *color = self.predictionLabel.textColor;
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
    self.predictionLabel.textColor = [self.predictionColorArray objectAtIndex:color];
}
@end
