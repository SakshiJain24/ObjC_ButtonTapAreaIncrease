#import "MMCustomButton.h"

@implementation MMCustomButton

-(void)awakeFromNib
{
    [self initDefaultMargins];
}

-(instancetype)init
{
    if ((self = [super init]))
    {
        [self initDefaultMargins];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        [self initDefaultMargins];
    }
    return self;
}

-(void)initDefaultMargins
{
    _marginX = 5.0;
    _marginY = 5.0;
    _customArea = CGRectZero;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    CGRect area;
    if (CGRectEqualToRect(self.customArea, CGRectZero))
    {
        area = CGRectInset(self.bounds, -self.marginX, -self.marginY);
    }
    else
    {
        area = self.customArea;
    }
    
    return CGRectContainsPoint(area, point);
}

@end
