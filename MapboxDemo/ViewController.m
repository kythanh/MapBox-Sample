//
//  ViewController.m
//  MapboxDemo
//
//  Created by KyThanh on 28/12/15.
//  Copyright © 2015 GKIM Ltd. All rights reserved.
//

#import "ViewController.h"
#import "Mapbox.h"

@interface ViewController ()<MGLMapViewDelegate>

@property (nonatomic) MGLMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // initialize the map view
    self.mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds];
    self.mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.mapView.delegate = self;
    // set the map's center coordinate
    [self.mapView setCenterCoordinate:CLLocationCoordinate2DMake(38.894368, -77.036487)
                            zoomLevel:15
                             animated:NO];
    [self.view addSubview:self.mapView];
}
// Always show a callout when an annotation is tapped.
- (BOOL)mapView:(MGLMapView *)mapView annotationCanShowCallout:(id <MGLAnnotation>)annotation {
    return YES;
}
@end