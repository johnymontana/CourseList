//
//  CourseListViewController.m
//  CourseList
//
//  Created by William Lyon on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CourseListViewController.h"
#import "ViewCourseListTableViewController.h"
//#import "ViewCourseListTableViewController.m"
@implementation CourseListViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}
#define COURSES_KEY @"CourseList.Favorites"

- (IBAction)clearCourseList {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *clear = [NSMutableArray array];
    [defaults setObject:clear forKey:COURSES_KEY];
    [defaults synchronize];
}
#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DirectToViewCourses"])
    {
        
       // NSArray *viewCourses = [[NSUserDefaults standardUserDefaults] objectForKey:COURSES_KEY];
        [segue.destinationViewController setViewCourses];
    }
}

@end
