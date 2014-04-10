//
//  INFO_4290_Final_ProjectAppDelegate.h
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-01-29.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface INFO_4290_Final_ProjectAppDelegate : UIResponder <UIApplicationDelegate, FBLoginViewDelegate>{
    
    NSManagedObjectContext *managedObjectContext;
    NSManagedObjectModel *managedObjectModel;
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property BOOL soundON;

@property (strong,nonatomic) UIImage *backgroundImage;
- (NSURL *)applicationDocumentsDirectory;

- (void)saveContext;
//Read more at http://duuro.com/integrate-core-data-with-an-existing-project/#ZD4mMLkQe6y4D9d5.99


-(BOOL)checkFacebookSession; 

@end
