//
//  MapViewController.m
//  PrimeiraApp
//
//  Created by Diego Chohfi on 5/26/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MKUserTrackingBarButtonItem.h>
@implementation MapViewController
@synthesize mapView;

- (void)viewDidLoad
{
    MKUserTrackingBarButtonItem *mapButton = [[MKUserTrackingBarButtonItem alloc] initWithMapView:mapView];
    self.navigationItem.leftBarButtonItem = mapButton;
    
    self.navigationItem.title = @"Primeira App";
}

- (void)viewDidUnload
{
    [self setMapView:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone){
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    }else{
        return YES;
    }
}

@end
