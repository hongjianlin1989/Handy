//
//  ViewController.swift
//  Handy
//
//  Created by hongjian lin on 10/11/18.
//  Copyright © 2018 com.hongjian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        #if DEVELOPMENT
        self.testLabel.text = "This is DEVELOPMENT Build"
        self.testLabel.textColor = UIColor.blue
        #elseif DISTRIBUTION
        self.testLabel.text = "This is DISTRIBUTION Build"
        self.testLabel.textColor = UIColor.magenta
        #else
        self.testLabel.text = "This is OTHER Build"
        self.testLabel.textColor = UIColor.red
        #endif
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

