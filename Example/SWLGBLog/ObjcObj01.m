//
//  ObjcObj01.m
//  SWLGBLog_Example
//
//  Created by guoquan li on 2018/12/20.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

#import "ObjcObj01.h"
#import "SWLGBLog-Swift.h"

@implementation ObjcObj01
-(void)test
{
    NSLog(@"hello objc 01");
    
//    NSString *str = [LGB new].test;
//    NSLog(@"str:%@", str);
    
#ifdef DEBUG
    LGB.enableLog = YES;
#endif
    
}
@end
