//
//  ViewController.h
//  CrystalBall
//
//  Created by Vishu Singh on 02/07/13.
//  Copyright (c) 2013 Vishu Singh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)buttonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;
@property (strong, nonatomic) NSArray *predictionColorArray;

@end
