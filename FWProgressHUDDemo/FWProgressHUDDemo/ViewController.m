//
//  ViewController.m
//  FWProgressHUDDemo
//
//  Created by silver on 2017/9/7.
//  Copyright © 2017年 Fsilver. All rights reserved.
//

#import "ViewController.h"
#import "FWProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *arr = @[@"FWProgressHUDModeIndeterminate(1)",@"FWProgressHUDModeIndeterminate(2)",@"FWProgressHUDModeText",@"FWProgressHUDModeCustomView(1)",@"FWProgressHUDModeCustomView(2)"];
    [arr enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
        btn.frame = CGRectMake(0, 64+(80*idx), 320, 20);
        btn.tag = idx;
        [btn setTitle:obj forState:UIControlStateNormal];
        [self.view addSubview:btn];
    }];
    
    

    // Do any additional setup after loading the view, typically from a nib.
}

-(void)btnClicked:(UIButton*)btn {
    
    switch (btn.tag) {
        case 0:
        {
            FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
            [hud hideAfterDelay:2.f];
        }
            break;
        case 1:
        {
            FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
            hud.label.text = @"do something";
            [hud hideAfterDelay:2.f];
        }
            break;
        case 2:
        {
            FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
            hud.mode = FWProgressHUDModeText;
            hud.label.text = @"do something";
            [hud hideAfterDelay:2.f];
        }
            break;
        case 3:
        {
            UIView *customView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 150, 50)];
            customView.backgroundColor = [UIColor purpleColor];
            
            FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
            hud.mode = FWProgressHUDModeCustomView;
            hud.customView = customView;
            [hud hideAfterDelay:2.f];
        }
            break;
        case 4:
        {
            UIView *customView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 150, 50)];
            customView.backgroundColor = [UIColor purpleColor];
            
            FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
            hud.mode = FWProgressHUDModeCustomView;
            hud.customView = customView;
            hud.label.text = @"do something";
            [hud hideAfterDelay:2.f];
        }
            break;
        default:
            break;
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
