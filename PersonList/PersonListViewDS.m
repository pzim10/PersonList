
//
//  PersonListViewDS.m
//  PersonList
//
//  Created by Peter Zimmerman on 6/30/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "PersonListViewDS.h"

@implementation PersonListViewDS

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [PersonController sharedInstance].personList.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    Person *person = [PersonController sharedInstance].personList[indexPath.row];
    cell.textLabel.text = person.name;
    return  cell;
}

@end
