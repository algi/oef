//
//  OEFServiceDispatcher.h
//  ObjectiveEnterpriseFramework
//
//  Created by Marian Bouček on 04.11.12.
//  Copyright (c) 2012 Marian Bouček. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OEFServiceDispatcher : NSObject

+ (id) dispatcherForService: (Class) service;

@end
