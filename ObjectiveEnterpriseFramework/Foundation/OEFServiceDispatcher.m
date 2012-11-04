//
//  OEFServiceDispatcher.m
//  ObjectiveEnterpriseFramework
//
//  Created by Marian Bouček on 04.11.12.
//  Copyright (c) 2012 Marian Bouček. All rights reserved.
//

#import "OEFServiceDispatcher.h"
#import "OEFApplicationContext.h"

@interface OEFServiceDispatcher ()

@property id service;

@end

@implementation OEFServiceDispatcher

- (id) initWithService: (id) serviceInstance
{
	self = [super init];
	
	if (self) {
		self.service = serviceInstance;
	}
	
	return self;
}

#pragma mark Obtaining dispatcher
+ (id) dispatcherForService: (Class) service
{
	id serviceInstance = [[service alloc] init];
	return [[OEFServiceDispatcher alloc] initWithService:serviceInstance];
}

#pragma mark Message forwarding
- (void)forwardInvocation:(NSInvocation *)anInvocation
{
	if ([self.service respondsToSelector:[anInvocation selector]]) {
		for (id preInvocationObserver in [[OEFApplicationContext defaultContext] preInvocationObservers]) {
			[preInvocationObserver observeInvocation: anInvocation];
		}
		
		[anInvocation invokeWithTarget: self.service];
		
		for (id postInvocationObserver in [[OEFApplicationContext defaultContext] postInvocationObservers]) {
			[postInvocationObserver observeInvocation:anInvocation];
		}
	}
	else {
		[super forwardInvocation:anInvocation];
	}
}

- (NSMethodSignature*)methodSignatureForSelector:(SEL)selector
{
    NSMethodSignature* signature = [super methodSignatureForSelector:selector];
    
	if (!signature) {
		if ([self.service respondsToSelector:selector]) {
			signature = [self.service methodSignatureForSelector:selector];
		}
    }
	
    return signature;
}


@end
