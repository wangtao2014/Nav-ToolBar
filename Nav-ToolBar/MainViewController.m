//
//  MainViewController.m
//  Nav-ToolBar
//
//  Created by wangtao on 14-5-28.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**
         typedef NS_ENUM(NSInteger, UIBarButtonItemStyle) {
             UIBarButtonItemStylePlain,    // shows glow(发光) when pressed
             UIBarButtonItemStyleBordered, // a simple button style with a border
             UIBarButtonItemStyleDone, // a button that completes some task and returns to the previous view 颜色较深
         };
     */

    /**
        typedef NS_ENUM(NSInteger, UIBarStyle) {
            UIBarStyleDefault          = 0, // 灰色的底
            UIBarStyleBlack            = 1, // 黑灰色的底

            UIBarStyleBlackOpaque      = 1, // Deprecated. Use UIBarStyleBlack
            UIBarStyleBlackTranslucent = 2, // Deprecated. Use UIBarStyleBlack and set the translucent property to YES
        };
     */

    self.view.backgroundColor = [UIColor redColor];

    float height = 50;
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - height, self.view.frame.size.width, height)];
    toolBar.translucent = NO; // YES 不是完全透明 只是半透明 NO 完全不透明
    toolBar.barStyle = UIBarStyleBlack;

//    UIBarButtonItem *firstItem = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(first:)];
//
//    UIBarButtonItem *secondItem = [[UIBarButtonItem alloc] initWithTitle:@"Bordered" style:UIBarButtonItemStyleBordered target:self action:@selector(second:)];
//
//    UIBarButtonItem *thirdItem = [[UIBarButtonItem alloc] initWithTitle:@"Plain" style:UIBarButtonItemStylePlain target:self action:@selector(third:)];

    UIBarButtonItem *doneBarItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done:)];
    UIBarButtonItem *editBarItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit  target:self action:@selector(edit:)];

    UIBarButtonItem *cancelBarItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel:)];

    UIBarButtonItem *cameralBarItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(cameral:)];

    UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:
                                      UIBarButtonSystemItemFlexibleSpace target:nil action:nil];

    UIBarButtonItem *fixedSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixedSpace.width = 60.0f;

    [toolBar setItems:@[doneBarItem, flexibleSpace, editBarItem, flexibleSpace ,cancelBarItem, flexibleSpace, cameralBarItem] animated:YES];
//    [toolBar setItems:@[firstItem, flexibleSpace, secondItem, flexibleSpace, thirdItem]];
    [self.view addSubview:toolBar];
}

- (void)first:(id)sender {
    NSLog(@"first %@", sender);
}

- (void)second:(id)sender {
    NSLog(@"second %@", sender);
}

- (void)third:(id)sender {
    NSLog(@"third %@", sender);
}

- (void)refresh:(id)sender
{
    NSLog(@"refresh %@", sender);
}

- (void)done:(id)sender
{
    NSLog(@"done %@", sender);
}

- (void)edit:(id)sender
{
    NSLog(@"edit %@", sender);
}

- (void)cancel:(id)sender
{
    NSLog(@"cancel %@", sender);
}

- (void)cameral:(id)sender
{
    NSLog(@"cameral %@", sender);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
