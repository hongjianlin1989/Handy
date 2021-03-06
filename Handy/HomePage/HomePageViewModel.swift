//
//  HomePageViewModel.swift
//  Handy
//
//  Created by hongjian lin on 11/5/18.
//  Copyright © 2018 com.hongjian. All rights reserved.
//

import UIKit

class HomePageViewModel: NSObject {
    
    override init() {
        super.init()
    }
    
    //tableview delegate
    var numberOfSections: Int {
        return 2
    }
    
    func numberOfRows(section: Int) -> Int {
        
        switch section {
        case 0:
            return 2
        case 1:
            return 1
        default:
            return 0
        }
        
    }
    
    func heightForFooter(section: Int) -> CGFloat {
        return 10
    }
    
    
    func heightForCell(section:Int, row: Int) -> CGFloat {
        
        switch section {
        case 0:
            return UITableViewAutomaticDimension
        case 1:
           return UITableViewAutomaticDimension

        default:
            return 0
        }
        

    }
    
  
}
