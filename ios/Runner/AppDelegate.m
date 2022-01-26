#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "MainViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.

  MainViewController *viewController = [[MainViewController alloc] init];
  UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:viewController];
  
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.window.backgroundColor = [UIColor whiteColor];
  self.window.rootViewController = navigation;
  [self.window makeKeyAndVisible];

  return YES;
}

@end
