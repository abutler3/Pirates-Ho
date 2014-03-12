//
//  CCTile.h
//  Pirates Ho
//
//  Created by Andrew Butler on 3/8/14.
//  Copyright (c) 2014 Andrew Butler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCWeapon.h"
#import "CCArmor.h"


@interface CCTile : NSObject

@property (strong, nonatomic) NSString *story;

@property (strong, nonatomic) UIImage  *backgroundImage;

@property (strong, nonatomic) NSString *actionButtonName;

@property (strong, nonatomic) CCWeapon *weapon;

@property (strong, nonatomic) CCArmor *armor;

@property (nonatomic) int healthEffect;


@end
