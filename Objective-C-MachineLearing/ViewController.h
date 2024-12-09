//
//  ViewController.h
//  Objective-C-MachineLearing
//
//  Created by Angelos Staboulis on 9/12/24.
//

#import <UIKit/UIKit.h>
#import "MyTextClassifier.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtReview;
- (IBAction)btnPrediction:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblPrediction;
@property MyTextClassifier *ml;
@property MyTextClassifierOutput *output;


@end

