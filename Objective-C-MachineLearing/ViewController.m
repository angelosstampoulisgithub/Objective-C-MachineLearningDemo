//
//  ViewController.m
//  Objective-C-MachineLearing
//
//  Created by Angelos Staboulis on 9/12/24.
//

#import "ViewController.h"
#import "CoreML/CoreML.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"MyTextClassifier" withExtension:@"mlmodel"];
    _ml = [[MyTextClassifier alloc] init];

    self.navigationItem.title = @"Machine Learing Demo";
}


- (IBAction)btnPrediction:(id)sender {
    _output = [_ml predictionFromText:[_txtReview text] error:nil];
    NSString *predictionString = [NSString stringWithFormat:@"%@",_output.label];
    [_lblPrediction setText:predictionString];
}
@end
