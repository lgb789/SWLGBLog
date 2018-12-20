//
//  ObjcController01.m
//  SWLGBLog_Example
//
//  Created by guoquan li on 2018/12/20.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

#import "ObjcController01.h"
#import "SWLGBLog_Example-Swift.h"
#import "SWLGBLog-Swift.h"

@interface ObjcController01 ()

@end

@implementation ObjcController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    LGB *lgb = [LGB new];
    SwiftClass01 *swc = [SwiftClass01 new];
//    [SwiftClass new];
    
//    [LGB new].flag = YES;
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
