#import <UIKit/UIKit.h>

@class jumpingViewController;

@interface jumpingAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    jumpingViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet jumpingViewController *viewController;

@end

