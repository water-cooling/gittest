//
//  FirstViewController.m
//  Runtime
//
//  Created by humengfan on 2018/6/7.
//  Copyright © 2018年 王师傅 Mac. All rights reserved.
//

#import "FirstViewController.h"
#import "ThreeViewController.h"
@interface FirstViewController ()
@property(nonatomic,strong)NSMutableArray *Arr;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.Arr = [NSMutableArray arrayWithObjects:@"id1",@"id2", nil];

    NSLog(@"%@",self.parentViewController);

    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    NSLog(@"%p--%@",self.Arr,self.Arr);

    
    
}
- (IBAction)sd:(id)sender {
    
ThreeViewController *three =   [[ThreeViewController alloc]initWithNibName:@"ThreeViewController" bundle:nil];
    
    three.Arrs = self.Arr;
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
