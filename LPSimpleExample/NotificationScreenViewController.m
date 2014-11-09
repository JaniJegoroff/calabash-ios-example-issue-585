//
//  NotificationScreenViewController.m
//  LPSimpleExample
//
//  Created by Jani Jegoroff on 08/11/2014.
//  Copyright (c) 2014 Xamarin. All rights reserved.
//

#import "NotificationScreenViewController.h"

@interface NotificationScreenViewController ()

@end

@implementation NotificationScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setAccessibilityIdentifier:@"notificationScreen"];
    [self.dismissButton setAccessibilityIdentifier:@"dismissButton"];
    
    [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"NOTIFICATION_PRESENTED"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismissButton:(id)sender;
{
    [self _setNotification];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc {
    [_dismissButton release];
    [super dealloc];
}

- (void)viewDidUnload {
    [self setDismissButton:nil];
    [super viewDidUnload];
}

- (void)_setNotification {
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
    {
        [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]];
        [[UIApplication sharedApplication] registerForRemoteNotifications];
    }
    else
    {
        [[UIApplication sharedApplication] registerForRemoteNotificationTypes:
         (UIUserNotificationTypeBadge | UIUserNotificationTypeSound | UIUserNotificationTypeAlert)];
    }
}

@end
