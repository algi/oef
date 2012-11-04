//
//  OEFLogInvocationObserver.m
//  ObjectiveEnterpriseFramework
//
//  Created by Marian Bouček on 04.11.12.
//  Copyright (c) 2012 Marian Bouček. All rights reserved.
//

#import "OEFLogInvocationObserver.h"

@interface OEFLogInvocationObserver ()

@property NSString *logMessage;

@end

@implementation OEFLogInvocationObserver

#pragma mark Init
- (id) initWithMessage: (NSString*) message
{
	self = [super init];
	if (self) {
		self.logMessage = message;
	}
	return self;
}

#pragma mark InvocationObserver implementation
- (void) observeInvocation:(NSInvocation *)invocation
{
	NSLog(@"%@", self.logMessage);
}

@end
