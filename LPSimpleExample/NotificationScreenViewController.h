//
//  NotificationScreenViewController.h
//  LPSimpleExample
//
//  Created by Jani Jegoroff on 08/11/2014.
//  Copyright (c) 2014 Xamarin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationScreenViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIButton *dismissButton;

- (IBAction)dismissButton:(id)sender;

@end
