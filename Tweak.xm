@interface MTPlatterHeaderContentView

@property (nonatomic, copy, readwrite) UIColor *BackgroundColor;

@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;

@end

%hook MTPlatterHeaderContentView

-(BOOL)isHidden 
{

     return YES;

}

- (void)layoutSubviews 
{

self.BackgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0];

}
%end