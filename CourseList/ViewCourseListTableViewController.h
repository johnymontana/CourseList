//
//  ViewCourseListTableViewController.h
//  CourseList
//
//  Created by William Lyon on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewCourseListTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *viewCourses;

-(void) setViewCourses;
@end
