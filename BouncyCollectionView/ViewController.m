//
//  ViewController.m
//  SpringCollectionView
//
//  Created by Thodoris on 03/03/14.
//  Copyright (c) 2014 72lions. All rights reserved.
//

#import "ViewController.h"
#import "BouncyCollectionViewFlowLayout.h"
#import "CustomCell.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

static NSString *CellIdentifier = @"BouncyCell";

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    [self.collectionView registerClass:[CustomCell class] forCellWithReuseIdentifier:CellIdentifier];

    BouncyCollectionViewFlowLayout *collectionViewLayout = [[BouncyCollectionViewFlowLayout alloc] init];

    // Uncomment the following lines if you want to have a vertical bouncy effect.

//    collectionViewLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
//    collectionViewLayout.itemSize = CGSizeMake(824.f, 200.f);

    [self.collectionView setCollectionViewLayout:collectionViewLayout animated:NO];

    // Uncomment the next line if you want to disable the bouncy effect

//    ((BouncyCollectionViewFlowLayout*)self.collectionView.collectionViewLayout).isEnabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

-(CustomCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];

    [cell setTitle:[NSString stringWithFormat:@"%d", indexPath.row]];
    return cell;
}

@end
