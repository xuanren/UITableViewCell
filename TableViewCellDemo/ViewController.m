//
//  ViewController.m
//  TableViewCellDemo
//
//  Created by renxuan on 15/8/5.
//  Copyright (c) 2015年 renxuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width,self.view.frame.size.height-20 ) style:(UITableViewStylePlain)];
    
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    
    m_arrImages = [NSArray arrayWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",nil];
    m_arrNames = [NSArray arrayWithObjects:@"走在冬夜的冷风中",@"你再说一遍",@"不做死就不会死",@"看有飞碟",@"哎愚蠢的人类",@"扯犊子尽瞎扯",@"走在冬夜的冷风中",@"你再说一遍",@"不做死就不会死",@"看有飞碟",@"哎愚蠢的人类",@"扯犊子尽瞎扯",@"走在冬夜的冷风中",@"你再说一遍",@"不做死就不会死",@"看有飞碟",@"哎愚蠢的人类",@"扯犊子尽瞎扯",nil];
    
    m_arrinfos = [NSArray arrayWithObjects:@"你说什么我听不到",@"你在逗我吗",@"揍得你不要不要的",@"看有人在作死",@"真的假的不敢相信",@"跪下唱征服吧",@"你说什么我听不到",@"你在逗我吗",@"揍得你不要不要的",@"看有人在作死",@"真的假的不敢相信",@"跪下唱征服吧",@"你说什么我听不到",@"你在逗我吗",@"揍得你不要不要的",@"看有人在作死",@"真的假的不敢相信",@"跪下唱征服吧",nil];
//    m_arrinfos.textColor = [UIColor redColor];
//    m_arrinfos.font = [UIFont boldSystemFontOfSize:20];
}
//显示状态栏
//[[[UIApplication sharedApplication] setStatusBarHidden:FALSE]];
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [m_arrinfos count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    NSInteger row = indexPath.row;
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    if (indexPath.row % 2)
    {
        [cell setBackgroundColor:[UIColor colorWithRed:.8 green:.8 blue:1 alpha:1]];
    }else {
        [cell setBackgroundColor:[UIColor clearColor]];
    }
    
//    cell.textLabel.backgroundColor = [UIColor clearColor];
//    cell.detailTextLabel.backgroundColor = [UIColor clearColor];
    
   //    NSUInteger row = [indexPath row];
//        //    把数组中的值赋给单元格显示出来
//    cell.textLabel.text = [self.dataList objectAtIndex:row];
    
      cell.lbImageView.image = [UIImage imageNamed:[m_arrImages objectAtIndex:row]];
      cell.lbInfo.text = [m_arrinfos objectAtIndex:row];
      cell.lbName.text = [m_arrNames objectAtIndex:row];
            //cell.backgroundColor = [UIColor grayColor];

    return cell;
}

@end
