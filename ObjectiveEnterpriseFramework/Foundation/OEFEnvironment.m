//
//  OEFEnvironment.m
//  ObjectiveEnterpriseFramework
//
//  Created by Marian Bouček on 04.11.12.
//  Copyright (c) 2012 Marian Bouček. All rights reserved.
//

#import "OEFEnvironment.h"

@implementation OEFEnvironment

static OEFEnvironment *instance;

+ (id) sharedEnvironment
{
	if (!instance) {
		instance = [[OEFEnvironment alloc] init];
	}
	
	return instance;
}


@end
