//
//  Play1VC.m
//  Color Sense Master
//
//  Created by Macbook on 09/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "Play1VC.h"
#import "SFDraggableDialogView.h"

@interface Play1VC () <SFDraggableDialogViewDelegate>
{
    NSMutableArray *dataArray;
    NSMutableDictionary * data;
    
    int random;
    
    int randomButton;
    
    NSString * selectedColor;
    NSString * answer;
    NSString * type;
    NSMutableDictionary * selectedData;
    
    NSTimer * t;
    int timer;
    
    int count;
    int score;
    int level;
}

@end

@implementation Play1VC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = false;
    //    [self showDialogue:@"You have won"];
    
    score = 0;
    count = 0;
    level = 0;
    
    timer = 30;
    
    t = [NSTimer scheduledTimerWithTimeInterval: 1.0
                                         target: self
                                       selector:@selector(timerLabel:)
                                       userInfo: nil repeats:YES];
    
    [self setArray];
    [self setScreen];
    
}


- (IBAction)b1Touched:(id)sender
{
    if ([_b1.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}

- (IBAction)b2Touched:(id)sender
{
    if ([_b2.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}

- (IBAction)b3Touched:(id)sender
{
    if ([_b3.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}

- (IBAction)b4Touched:(id)sender
{
    if ([_b4.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}

- (IBAction)b5Touched:(id)sender
{
    if ([_b5.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}

- (IBAction)b6Touched:(id)sender
{
    if ([_b6.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}

- (IBAction)b7Touched:(id)sender
{
    if ([_b7.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}

- (IBAction)b8Touched:(id)sender
{
    if ([_b8.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
       
    }
    count = count + 1;
    [self setScreen];
   
}

- (IBAction)b9Touched:(id)sender
{
    if ([_b9.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
  
}

- (IBAction)b10Touched:(id)sender
{
    if ([_b10.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}

- (IBAction)b11Touched:(id)sender
{
    if ([_b11.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}

- (IBAction)b12Touched:(id)sender
{
    if ([_b12.backgroundColor isEqual:[self getColor:answer]])
    {
        score = score + 100;
        
    }
    count = count + 1;
    [self setScreen];
}





-(void) setScreen
{

    
    level = level + 1;
    random = arc4random()%dataArray.count;
    randomButton = arc4random()%12;
    
    selectedData = [[NSMutableDictionary alloc] init];
    
    selectedData = [dataArray objectAtIndex:random];
    
    answer = [selectedData objectForKey:@"answer"];
    selectedColor = [selectedData objectForKey:@"color"];
    
    [self setButtons];
    
    self.questionLabel.text = [selectedData objectForKey:@"question"];
    
    
  NSString * high = [[NSUserDefaults standardUserDefaults] valueForKey:@"HighScore"];
    
    
    if (high)
    {
        _levelLabel.text = [NSString stringWithFormat:@"High Score %@", high];
    }
    else
    {
        _levelLabel.text = [NSString stringWithFormat:@"Your Score %d", score];
    }
    
}

-(void) setButtons
{
    if (randomButton == 0)
    {
        [_b1 setBackgroundColor:[self getColor:answer]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 1)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:answer]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 2)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:answer]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 3)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:answer]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 4)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:answer]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 5)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:answer]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 6)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:answer]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 7)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:answer]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 8)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:answer]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 9)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:answer]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 10)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:answer]];
        [_b12 setBackgroundColor:[self getColor:selectedColor]];
    }
    else if (randomButton == 11)
    {
        [_b1 setBackgroundColor:[self getColor:selectedColor]];
        [_b2 setBackgroundColor:[self getColor:selectedColor]];
        [_b3 setBackgroundColor:[self getColor:selectedColor]];
        [_b4 setBackgroundColor:[self getColor:selectedColor]];
        [_b5 setBackgroundColor:[self getColor:selectedColor]];
        [_b6 setBackgroundColor:[self getColor:selectedColor]];
        [_b7 setBackgroundColor:[self getColor:selectedColor]];
        [_b8 setBackgroundColor:[self getColor:selectedColor]];
        [_b9 setBackgroundColor:[self getColor:selectedColor]];
        [_b10 setBackgroundColor:[self getColor:selectedColor]];
        [_b11 setBackgroundColor:[self getColor:selectedColor]];
        [_b12 setBackgroundColor:[self getColor:answer]];
    }
}














-(UIColor*) getColor:(NSString*)color
{
    if([color isEqualToString:@"Red"])
    {
        return [UIColor redColor];
    }
    else if([color isEqualToString:@"LightGray"])
    {
        return [UIColor lightGrayColor];
    }
    else if([color isEqualToString:@"Gray"])
    {
        return [UIColor grayColor];
    }
    else if([color isEqualToString:@"Yellow"])
    {
        return [UIColor yellowColor];
    }
    else if([color isEqualToString:@"Black"])
    {
        return [UIColor blackColor];
    }
    else if([color isEqualToString:@"White"])
    {
        return [UIColor whiteColor];
    }
    else if([color isEqualToString:@"Brown"])
    {
        return [UIColor brownColor];
    }
    else if([color isEqualToString:@"Orange"])
    {
        return [UIColor orangeColor];
    }
    else if([color isEqualToString:@"Blue"])
    {
        return [UIColor blueColor];
    }
    else if([color isEqualToString:@"Magenta"])
    {
        return [UIColor magentaColor];
    }
    else if([color isEqualToString:@"Cyan"])
    {
        return [UIColor cyanColor];
    }
    else if([color isEqualToString:@"Purple"])
    {
        return [UIColor purpleColor];
    }
    else if([color isEqualToString:@"Green"])
    {
        return [UIColor greenColor];
    }
    else
    {
        return [UIColor purpleColor];
    }
}





-(void) setArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Different Color" forKey:@"question"];
    [data setValue:@"Red" forKey:@"color"];
    [data setValue:@"Orange" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Yellow Color" forKey:@"question"];
    [data setValue:@"Orange" forKey:@"color"];
    [data setValue:@"Yellow" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Brown Color" forKey:@"question"];
    [data setValue:@"Orange" forKey:@"color"];
    [data setValue:@"Brown" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Black Background" forKey:@"question"];
    [data setValue:@"Gray" forKey:@"color"];
    [data setValue:@"Black" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Black Background" forKey:@"question"];
    [data setValue:@"White" forKey:@"color"];
    [data setValue:@"Black" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select White Background" forKey:@"question"];
    [data setValue:@"LightGray" forKey:@"color"];
    [data setValue:@"White" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Different Background" forKey:@"question"];
    [data setValue:@"Purple" forKey:@"color"];
    [data setValue:@"Orange" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select White Background" forKey:@"question"];
    [data setValue:@"LightGray" forKey:@"color"];
    [data setValue:@"White" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Orange Color" forKey:@"question"];
    [data setValue:@"Yellow" forKey:@"color"];
    [data setValue:@"Orange" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Gray Color" forKey:@"question"];
    [data setValue:@"Black" forKey:@"color"];
    [data setValue:@"Gray" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Magenta Color" forKey:@"question"];
    [data setValue:@"Purple" forKey:@"color"];
    [data setValue:@"Magenta" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Cyan Color" forKey:@"question"];
    [data setValue:@"Blue" forKey:@"color"];
    [data setValue:@"Cyan" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Blue Color" forKey:@"question"];
    [data setValue:@"Green" forKey:@"color"];
    [data setValue:@"Blue" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Green Color" forKey:@"question"];
    [data setValue:@"Blue" forKey:@"color"];
    [data setValue:@"Green" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select Purple Color" forKey:@"question"];
    [data setValue:@"Magenta" forKey:@"color"];
    [data setValue:@"Purple" forKey:@"answer"];
    [dataArray addObject:data];
    
}
























-(void)timerLabel:(NSTimer *)timer1
{
    
    timer=timer-1;
    _timerLabel.text = [NSString stringWithFormat:@"%d",timer];
    
    if(timer==0)
    {
        [t invalidate];
        [self showDialogue:[NSString stringWithFormat:@"You Scored %d", score]];
    }
//    else if(timer==0 && count == 10)
//    {
//        [t invalidate];
//        [self showDialogue:@"You have lost"];
//    }
}












- (void) showDialogue:(NSString *) text
{
    NSString * high = [[NSUserDefaults standardUserDefaults] valueForKey:@"HighScore"];
    
    
    int h = [high intValue];
    
    if (score > h)
    {
        [[NSUserDefaults standardUserDefaults] setValue:[NSString stringWithFormat:@"%d", score]  forKey:@"HighScore"];
    }
    
    
    
    [t invalidate];
    SFDraggableDialogView *dialogView = [[[NSBundle mainBundle] loadNibNamed:@"SFDraggableDialogView" owner:self options:nil] firstObject];
    dialogView.frame = self.view.bounds;
    dialogView.photo = [UIImage imageNamed:@"app_icon.jpg"];
    dialogView.delegate = self;
    dialogView.titleText = [[NSMutableAttributedString alloc] initWithString:@"Round is Over"];
    dialogView.messageText = [self exampleAttributeString:text];
    dialogView.firstBtnText = [@"Main Menu" uppercaseString];
    dialogView.dialogBackgroundColor = [UIColor whiteColor];
    dialogView.cornerRadius = 8.0;
    dialogView.backgroundShadowOpacity = 0.2;
    dialogView.hideCloseButton = true;
    dialogView.showSecondBtn = false;
    dialogView.contentViewType = SFContentViewTypeDefault;
    dialogView.firstBtnBackgroundColor = [UIColor colorWithRed:0.330 green:0.567 blue:0.116 alpha:1.000];
    [dialogView createBlurBackgroundWithImage:[self jt_imageWithView:self.view] tintColor:[[UIColor blackColor] colorWithAlphaComponent:0.35] blurRadius:60.0];
    
    [self.view addSubview:dialogView];
}

- (NSMutableAttributedString *)exampleAttributeString:(NSString *)text
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:21.0] range:NSMakeRange(9, 3)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:0.230 green:0.777 blue:0.316 alpha:1.000] range:NSMakeRange(9, 3)];
    return attributedString;
}

#pragma mark - SFDraggableDialogViewDelegate
- (void)draggableDialogView:(SFDraggableDialogView *)dialogView didPressFirstButton:(UIButton *)firstButton
{
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"The first button pressed");
}

- (void)draggingDidBegin:(SFDraggableDialogView *)dialogView
{
    NSLog(@"Dragging has begun");
}

- (void)draggingDidEnd:(SFDraggableDialogView *)dialogView
{
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"Dragging did end");
}

- (void)draggableDialogViewWillDismiss:(SFDraggableDialogView *)dialogView
{
    NSLog(@"Will be dismissed");
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)draggableDialogViewDismissed:(SFDraggableDialogView *)dialogView
{
    NSLog(@"Dismissed");
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Snapshot
- (UIImage *)jt_imageWithView:(UIView *)view
{
    CGFloat scale = [[UIScreen mainScreen] scale];
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, scale);
    [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:true];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
