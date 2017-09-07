# FWProgressHUD
A lite indicators. Easy to use.
## Samples.
### Indicator only.
    FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
    [hud hideAfterDelay:2.f];
### Indicator and text.
    FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
    hud.label.text = @"do something";
    [hud hideAfterDelay:2.f];
### Text only
    FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
    hud.mode = FWProgressHUDModeText;
    hud.label.text = @"do something";
    [hud hideAfterDelay:2.f];
### CustomView only
    UIView *customView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 150, 50)];
    customView.backgroundColor = [UIColor purpleColor];
            
    FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
    hud.mode = FWProgressHUDModeCustomView;
    hud.customView = customView;
    [hud hideAfterDelay:2.f];
### CustomView only
    UIView *customView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 150, 50)];
    customView.backgroundColor = [UIColor purpleColor];
            
    FWProgressHUD *hud = [FWProgressHUD showHUDAddedTo:self.view];
    hud.mode = FWProgressHUDModeCustomView;
    hud.customView = customView;
    hud.label.text = @"do something";
    [hud hideAfterDelay:2.f];    
