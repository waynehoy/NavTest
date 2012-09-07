//
//  MainView.h
//  NavTest
//
//  Created by Wayne Hoy on 12-09-06.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MainView : UIViewController {
	IBOutlet UILabel *myLabel;
	IBOutlet UIButton *myButtonA;
	IBOutlet UIButton *myButtonB;
	IBOutlet UIButton *myButtonC;
}

@property (nonatomic, retain) IBOutlet UILabel *myLabel;
@property (nonatomic, retain) IBOutlet UIButton *myButtonA;
@property (nonatomic, retain) IBOutlet UIButton *myButtonB;
@property (nonatomic, retain) IBOutlet UIButton *myButtonC;

- (IBAction) myButtonA_OnClick: (id) sender;
- (IBAction) myButtonB_OnClick: (id) sender;
- (IBAction) myButtonC_OnClick: (id) sender;

@end
