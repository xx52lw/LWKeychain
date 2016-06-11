//
//  ViewController.m
//  LWKeychain
//
//  Created by 张星星 on 16/6/11.
//  Copyright © 2016年 LW. All rights reserved.
//

#import "ViewController.h"
#import "KeychainTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *keychainKey = [NSBundle mainBundle].bundleIdentifier;
    NSString *nameKey = [NSString stringWithFormat:@"name-%@",keychainKey];
    [KeychainTool saveKeychainValue:@"liweiceshi" Key:nameKey];
    NSString *pwdKey = [NSString stringWithFormat:@"pwd-%@",keychainKey];
    [KeychainTool saveKeychainValue:@"a111" Key:pwdKey];
    
    NSLog(@"name - %@",[KeychainTool readKeychainValue:nameKey]);
    NSLog(@"pwd  - %@",[KeychainTool readKeychainValue:pwdKey]);
    [KeychainTool deleteKeychainValue:pwdKey];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
