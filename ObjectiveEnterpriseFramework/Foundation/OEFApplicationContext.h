//
//  OEFApplicationContext.h
//  ObjectiveEnterpriseFramework
//
//  Created by Marian Bouček on 04.11.12.
//  Copyright (c) 2012 Marian Bouček. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "OEFInvocationObserver.h"

@interface OEFApplicationContext : NSObject

+ (id) defaultContext;

- (void) addPreInvocationObserver: (id<OEFInvocationObserver>) observer;
- (void) addPostInvocationObserver: (id<OEFInvocationObserver>) observer;

- (NSArray*) preInvocationObservers;
- (NSArray*) postInvocationObservers;

@end
