//
//  OEFEnvironment+OEFDatabaseEnvironment.h
//  ObjectiveEnterpriseFramework
//
//  Created by Marian Bouček on 04.11.12.
//  Copyright (c) 2012 Marian Bouček. All rights reserved.
//

#import "OEFEnvironment.h"

@interface OEFEnvironment (OEFDatabaseEnvironment)

@property NSString* dbHost;
@property int dbPort;

@end
