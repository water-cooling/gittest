//
//  ViewController.m
//  Runtime
//
//  Created by humengfan on 2018/3/21.
//  Copyright © 2018年 王师傅 Mac. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "RegiseTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic)  UIViewController *currencontroller;
@property (weak, nonatomic) IBOutlet UITableView *uiscrollview;
@property(nonatomic,assign)NSInteger index;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    NSString * title = @"valuename";
    NSString * name = @"-3.3232";
    
    double number = name.doubleValue;
    
    NSLog(@"%f",number);
    
}
- (IBAction)click:(id)sender {
    
    FirstViewController * firt = [[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:nil];
    
    [self.navigationController pushViewController:firt animated:YES];
}


-(void)test{
    
   

    if (self.index < 3) {
        
    }else
    {
        
        return;
        
        
    }
    
    NSMutableArray* result = [NSMutableArray array];
    
    dispatch_group_t group = dispatch_group_create();
        for (NSInteger j = 0; j < 2; j++) {

            dispatch_group_enter(group);

            
        dispatch_async(dispatch_get_global_queue(0,0), ^{
            
           
            dispatch_group_leave(group);

            NSLog(@"fasle");

            @synchronized (result) { // NSMutableArray 是线程不安全的，所以加个同步锁
                
                
            }
            
        });
            
   
    }

        dispatch_group_notify(group, dispatch_get_main_queue(), ^{
           NSLog(@"总结%@---%d",result,self.index++);
            [self test];

        });
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 0;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 10;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    RegiseTableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"RegiseTableViewCell" forIndexPath:indexPath];
    
    return cell;
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 55;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
