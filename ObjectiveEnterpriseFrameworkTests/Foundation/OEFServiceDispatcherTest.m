//
//  OEFServiceDispatcherTest.m
//  ObjectiveEnterpriseFramework
//
//  Created by Marian Bouček on 04.11.12.
//  Copyright (c) 2012 Marian Bouček. All rights reserved.
//

#import "OEFServiceDispatcherTest.h"

#import "OEFApplicationContext.h"
#import "OEFArithmeticService.h"
#import "OEFInvocationObserver.h"
#import "OEFServiceDispatcher.h"
#import "OEFLogInvocationObserver.h"

@implementation OEFServiceDispatcherTest

- (void) testArithmeticService
{
	id context = [OEFApplicationContext defaultContext];
	[context addPreInvocationObserver:[[OEFLogInvocationObserver alloc] initWithMessage: @"<-- preinit"]];
	[context addPostInvocationObserver:[[OEFLogInvocationObserver alloc] initWithMessage: @"postinit -->"]];
	
	OEFArithmeticService *arithmeticService = [OEFServiceDispatcher dispatcherForService:[OEFArithmeticService class]];
	int result = [arithmeticService sum:1 with:2];
	
    STAssertEquals(result, 3, @"Arithmetic failure.");
}

@end
