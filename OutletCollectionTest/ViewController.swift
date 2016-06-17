//
//  ViewController.swift
//  OutletCollectionTest
//
//  Created by Kristin Kamenar on 6/17/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //collection outlet
    //name plural to indicate more than 1
    //connect labels 2 and 3 to collection
    @IBOutlet var ourLabels: [UILabel]!

    //outlet for label 2
    //notice no brackets
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //iterate through array to apply a line of code to all elements
        //for ... in 
        
        //label is a temporary variable
        //loops through 3 times
        for label in ourLabels {
            
            //loops through 3 times and prints out the 
            //text in each label
            print(label.text!)
            
            //cast to an integer
            let labelNumber = Int(label.text!)
            
            //without !, prints out as optional
            print(labelNumber!)
            
            //change background color based on number in label
            //if it's 1, make the background blue
            //if it's 2, make the background brown
            //if it's 3, make the background red
            //otherwise, make the background white
            //must have a default for switch statements
            switch (labelNumber!)
            {
            case 1:
                label.backgroundColor = UIColor.blueColor()
            case 2:
                label.backgroundColor = UIColor.brownColor()
            case 3:
                label.backgroundColor = UIColor.redColor()
            default:
                label.backgroundColor = UIColor.whiteColor()
                
            }
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

