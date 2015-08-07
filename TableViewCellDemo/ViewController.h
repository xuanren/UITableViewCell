//
//  ViewController.h
//  TableViewCellDemo
//
//  Created by renxuan on 15/8/5.
//  Copyright (c) 2015年 renxuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *m_arrNames;
    NSArray *m_arrinfos;
    NSArray *m_arrImages;
}

@end

