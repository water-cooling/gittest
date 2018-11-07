//
//  SecondViewController.m
//  Runtime
//
//  Created by humengfan on 2018/6/7.
//  Copyright © 2018年 王师傅 Mac. All rights reserved.
//

#import "SecondViewController.h"
#import "FourViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)click:(UIButton *)sender {

    
    FourViewController *three =   [[FourViewController alloc]initWithNibName:@"FourViewController" bundle:nil];
    
    [self.navigationController pushViewController: three animated:YES];

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

@end
