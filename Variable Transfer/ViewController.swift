//
//  ViewController.swift
//  Variable Transfer
//
//  Created by 樋口大樹 on 2017/08/15.
//  Copyright © 2017年 樋口大樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sendNumber : Int = 0
    @IBOutlet var label : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(sendNumber)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func pulus(){
        sendNumber = sendNumber+1
        label.text = String(sendNumber)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "receiverView") {
            let viewController2 = segue.destination as! ViewController2
            viewController2.receiveNumber = self.sendNumber
        }
    }

}

