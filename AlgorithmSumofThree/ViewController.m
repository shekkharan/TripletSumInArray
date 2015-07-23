//
//  ViewController.m
//  AlgorithmSumofThree
//
//  Created by Shekhar  on 22/7/15.
//  Copyright (c) 2015 Edenred. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *array;
    NSMutableDictionary *hashMap;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    hashMap = [NSMutableDictionary dictionary];
    array = @[@1, @2, @-2, @0];
    
    for(int i=0;i < [array count] - 1; i++)
    {
        for (int j = i + 1; j < [array count]; j++) {
            NSArray *remainder = [array subarrayWithRange:NSMakeRange(j + 1,[array count] - (NSInteger)j - 1)];
            NSSet *setMap = [NSSet setWithArray:remainder];
            
            int sum = [[array objectAtIndex:j]intValue] + [[array objectAtIndex:i]intValue];
            if ([setMap containsObject:[NSNumber numberWithInt:-sum]]) {
                NSLog(@"%d,%d,%d",-sum,[[array objectAtIndex:i]intValue],[[array objectAtIndex:j]intValue]);
            }
        }
    }

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
