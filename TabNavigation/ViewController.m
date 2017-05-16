//
//  ViewController.m
//  TabNavigation
//
//  Created by Ajay on 5/15/17.
//  Copyright © 2017 AJ Inc. All rights reserved.
//

#import "ViewController.h"
#import "EntertainmentViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startTrailers:(UIButton *)sender {
    
    EntertainmentViewController *eVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewToEntertainment"];
    
    [self presentViewController:eVC animated:YES completion:^{
        
        
        NSString *embedCode = @"<iframe src=\"https://www.youtube.com/embed/awlWQyFix_A?ecver=2\" width=\"300\" height=\"200\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe>";
        
        [[eVC wv1] loadHTMLString:embedCode baseURL:nil];
        

        
    }];
    
    
}



@end
