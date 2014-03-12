//
//  CCFactory.m
//  Pirates Ho
//
//  Created by Andrew Butler on 3/8/14.
//  Copyright (c) 2014 Andrew Butler. All rights reserved.
//

#import "CCFactory.h"
#import "CCTile.h"

@implementation CCFactory

-(NSArray *)tiles
{
    CCTile *tile1 = [[CCTile alloc] init];
    tile1.story = @"Good morning Captain, we need a fearless leader such as yourslef to undertake a voyage. You must stop the evil pirate Boss. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"1.jpg"];
    CCWeapon *bluntedSword = [[CCWeapon alloc] init];
    bluntedSword.name = @"Blunted sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword";
    
    CCTile *tile2 = [[CCTile alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"2.jpg"];
    CCArmor *steelArmor = [[CCArmor alloc] init];
    steelArmor.name = @"Steel armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take armor";

    
    CCTile *tile3 = [[CCTile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"3.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock";

    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];

    
    CCTile *tile4 = [[CCTile alloc] init];
    tile4.story = @"You have found a parrot. Parrots can be used in your armor slot. Parrots are a great defender and loyal to their captain!";
    tile4.backgroundImage = [UIImage imageNamed:@"4.jpg"];
    CCArmor *parrotArmor = [[CCArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot";
    tile4.actionButtonName = @"Adopt Parrot";

    
    CCTile *tile5 = [[CCTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"5.jpg"];
    CCWeapon *pistolWeapon = [[CCWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 15;
    tile5.weapon = pistolWeapon;
    tile5.actionButtonName = @"Use Pistol";

    
    CCTile *tile6 = [[CCTile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank.";
    tile6.backgroundImage = [UIImage imageNamed:@"6.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";


    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    CCTile *tile7 = [[CCTile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast. Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"7.jpg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight the scum";


    
    CCTile *tile8 = [[CCTile alloc] init];
    tile8.story = @"The legend of the deep. Here is the kraken!";
    tile8.backgroundImage = [UIImage imageNamed:@"8.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon ship";


    
    CCTile *tile9 = [[CCTile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave. Treasure is inside!";
    tile9.backgroundImage = [UIImage imageNamed:@"9.jpg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take treasure";


    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    CCTile *tile10 = [[CCTile alloc] init];
    tile10.story = @"A group of pirates are trying to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"10.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repeal the invaders";


    
    CCTile *tile11 = [[CCTile alloc] init];
    tile11.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"11.jpg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";


    
    CCTile *tile12 = [[CCTile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"woman.jpg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight";


    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(CCCharacter *)character
// Created an instance method called character (character) that creates a Character object (CCCharacter)
{
    // Create character
    CCCharacter *character = [[CCCharacter alloc] init];
    character.health = 100;
    CCArmor *armor = [[CCArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;

    CCWeapon *weapon = [[CCWeapon alloc] init];
    weapon.name = @"Fist";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(CCBoss *)boss
{
    CCBoss *boss = [[CCBoss alloc] init];
    boss.health = 65;
    return boss;
}


@end
