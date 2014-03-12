//
//  CCFactory.h
//  Pirates Ho
//
//  Created by Andrew Butler on 3/8/14.
//  Copyright (c) 2014 Andrew Butler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCFactory : NSObject

-(NSArray *)tiles;
-(CCCharacter *)character;
-(CCBoss *)boss;
@end
