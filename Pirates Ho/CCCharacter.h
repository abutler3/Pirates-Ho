//
//  CCCharacter.h
//  Pirates Ho
//
//  Created by Andrew Butler on 3/10/14.
//  Copyright (c) 2014 Andrew Butler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCArmor.h"
#import "CCWeapon.h"

@interface CCCharacter : NSObject

@property (strong, nonatomic) CCArmor *armor;
// Character has one armor
@property (strong, nonatomic) CCWeapon *weapon;
// Character has one weapon
@property (nonatomic) int damage;
@property (nonatomic) int health;


@end
