//
//  OEFApplicationContext.m
//  ObjectiveEnterpriseFramework
//
//  Created by Marian Bouček on 04.11.12.
//  Copyright (c) 2012 Marian Bouček. All rights reserved.
//

#import "OEFApplicationContext.h"

@interface OEFApplicationContext ()

  @property NSMutableArray *preInvocationHandlers;
  @property NSMutableArray *postInvocationHandlers;

@end

@implementation OEFApplicationContext

static OEFApplicationContext *singleton = nil;

- (id) init
{
	self = [super init];
	
	if (self) {
		self.preInvocationHandlers = [[NSMutableArray alloc] init];
		self.postInvocationHandlers = [[NSMutableArray alloc] init];
	}
	
	return self;
}

#pragma mark Singleton accessor
+ (id) defaultContext
{
	if (! singleton) {
		singleton = [[OEFApplicationContext alloc] init];
	}
	
	return singleton;
}

#pragma mark Invotacion observers
- (void) addPreInvocationObserver: (id) observer
{
	[self.preInvocationHandlers addObject:observer];
}

- (void) addPostInvocationObserver: (id) observer
{
	[self.postInvocationHandlers addObject:observer];
}

- (NSArray*) preInvocationObservers
{
	return self.preInvocationHandlers;
}

- (NSArray*) postInvocationObservers
{
	return self.postInvocationHandlers;
}

@end
