//
//  ViewController.m
//  Objc_class1_1
//
//  Created by Li Chen Liou on 2017/6/19.
//  Copyright © 2017年 Li Chen Liou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //假設一個變量int 作為計數用
    int count;
}
//首先 在storyboard 擺一個Button 水平垂直置中
//拉IBOutlet建立連結
@property (strong, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     count=0;
}

- (IBAction)buttonAction:(id)sender {
    //我們來寫一個簡單的練習
    //當使用者按下去時 按鈕會變色 並且換字
    if (count==0) {
        //在上面IBOutlet中 我們命名為myButton
        //設定背景顏色
        [_myButton setBackgroundColor:[UIColor redColor]];
        //設定按鈕title
        [_myButton setTitle:@"Hello" forState:UIControlStateNormal];
        count++;
    }
    else if(count==1){
        [_myButton setBackgroundColor:[UIColor greenColor]];
        [_myButton setTitle:@"World" forState:UIControlStateNormal];
        count++;
    }
    else if(count==2){
        [_myButton setBackgroundColor:[UIColor blueColor]];
        [_myButton setTitle:@"Hello World" forState:UIControlStateNormal];
        count=0;
    }

}


@end
