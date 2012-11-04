//
//  OEFArithmeticService.m
//  ObjectiveEnterpriseFramework
//
//  Created by Marian Bouček on 04.11.12.
//  Copyright (c) 2012 Marian Bouček. All rights reserved.
//

#import "OEFArithmeticService.h"

@implementation OEFArithmeticService

- (int) sum: (int) a
	   with: (int) b
{
	NSLog(@"ArithmeticService sum: %d with: %d.", a, b);
	return a + b;
}

@end
