#import <UIKit/UIKit.h>

/**
 
 InHerit Any Button From This Class
 
 Custom UIButton implemetation that enables changeing the touch are of the button while keeping th appearance same.
 @param marginX Button's rect will be increased by this value on both sides on the x-axis. Default value is 5.0.
 @param marginY Button's rect will be increased by this value on both sides on the y-axis. Default value is 5.0.
 @param customArea If set, the button ignores the marginX and marginY values and takes this rect as touch area. This CGRect should be with respect to the button's bounds.

 */
@interface MMCustomButton : UIButton

@property (nonatomic, assign) CGFloat marginX;
@property (nonatomic, assign) CGFloat marginY;
@property (nonatomic, assign) CGRect customArea;

@end