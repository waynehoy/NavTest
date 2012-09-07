//
//  MainView.m
//  NavTest
//
//  Created by Wayne Hoy on 12-09-06.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"
#import "SecondView.h"

@implementation MainView

@synthesize myLabel;
@synthesize myButtonA;
@synthesize myButtonB;
@synthesize myButtonC;

- (IBAction) myButtonA_OnClick: (id) sender
{
//	myLabel.text = @"Button A for Apple";
	SecondView *aView = [[SecondView alloc] init];
	
	aView.title = @"Next Page";
	[self.navigationController pushViewController:aView animated:YES];
	[aView release];
}

- (IBAction) myButtonB_OnClick: (id) sender
{
	myLabel.text = @"Button B for Bronco";

}

- (IBAction) myButtonC_OnClick: (id) sender
{
	myLabel.text = @"Button C for Czech Republic";
	
	
}



// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
