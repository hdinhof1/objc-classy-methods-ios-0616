//  FISAppDelegate.m

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     
     *  Write your code here.
     
     */
    NSString *katherine = @"Katherine";
    NSString *katherineHepburn = [katherine stringByAppendingString:@" Hepburn"];
    NSLog(@"%@", katherineHepburn);

    NSString *james = @"James";
    NSString *jamesStewart = [[NSString alloc] initWithFormat:@"%@ %@",james, @"Stewart"];
    NSLog(@"%@", jamesStewart);
    
    NSString *queen = @"Queen";
    NSString *queenElizabethII = [NSString stringWithFormat:@"%@ %@ %@", queen, @"Elizabeth",@"II"];
    NSLog(@"%@", queenElizabethII);
    
    NSArray *classyThings = @[ @"monocle", @"top hat", @"martini glass" ];
    NSLog(@"%@", classyThings);

    NSArray *classyPeople = [[NSArray alloc] initWithObjects:katherine, jamesStewart,queenElizabethII, nil]; //note here you need the null terminator
    NSLog(@"%@", classyPeople);
    
    //Class methods
    NSArray *classyDrinks = [NSArray arrayWithObjects:@"Old Fashioned", @"Churchill Martini", @"Prosecco", nil];
    NSLog(@"%@", classyDrinks);
    
    NSDictionary *classyByLiteral = @{ @"classy things" : @[ @"monocle"            ,
                                                             @"top hat"            ,
                                                             @"martini glass"      ],
                                       @"classy people" : @[ @"Katherine Hepburn"  ,
                                                             @"James Stewart"      ,
                                                             @"Queen Elizabeth II" ],
                                       @"classy drinks" : @[ @"Old Fashioned"      ,
                                                             @"Churchill Martini"  ,
                                                             @"Prosecco"           ]
                                       };
    NSLog(@"%@", classyByLiteral);

    NSDictionary *classyByInit = [[NSDictionary alloc] initWithObjectsAndKeys:classyThings, @"classy things", classyPeople, @"classy people", classyDrinks, @"classy drinks", nil]; //note here reverse order of object , key when listing it here ^^   (usually key : object)
    NSLog(@"%@", classyByInit);
    
    NSDictionary *classyByClass = [NSDictionary dictionaryWithObjects:@[classyThings, classyPeople, classyDrinks]
                                                             forKeys:@[@"classy things", @"classy people", @"classy drinks"]];
    NSLog(@"%@", classyByClass);

    return YES;
}

@end
