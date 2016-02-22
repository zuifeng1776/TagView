//
//  ViewController.m
//  XHTagViewDemo
//
//  Created by Jack_iMac on 16/2/22.
//  Copyright © 2016年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com. All rights reserved.
//

#import "ViewController.h"
#import <XHTagView.h>

@interface ViewController ()

@property (nonatomic, weak) IBOutlet XHTagView *tagView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self performSelector:@selector(showTagView) withObject:nil afterDelay:0];
}

- (void)showTagView {
    [self.tagView showInPoint:CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds))];
}

- (void)dismissTagView {
    [self.tagView dismiss];
    self.tagView = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
