//
//  ViewController.swift
//  TableTest
//
//  Created by cscoi020 on 2017. 1. 19..
//  Copyright © 2017년 Noverish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var selectedCoupon:Coupon?
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var couponLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        
        nameLabel.text = selectedCoupon?.name
        
        let count = 1...selectedCoupon!.now
        let count2 = 1...selectedCoupon!.max - selectedCoupon!.now
        var tempstr = ""
        for i in count{
            tempstr += "●"
        }
        for j in count2{
            tempstr += "○"
        }
        
        couponLabel.text = tempstr
        //couponLabel.text = String(describing: selectedCoupon!.now) + "/" + String(describing: selectedCoupon!.max)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

