//
//  ViewController2.swift
//  Variable Transfer
//
//  Created by 樋口大樹 on 2017/08/15.
//  Copyright © 2017年 樋口大樹. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var receiveNumber: Int = 0
    @IBOutlet var label :UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //label.text = "\(receiveNumber)"
        label.text = String(receiveNumber)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func minus(){
        receiveNumber = receiveNumber - 1
        label.text = String(receiveNumber)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //""で囲むのは文字列だから？
        if(segue.identifier == "senderView"){
            let view = segue.destination as! ViewController
            view.sendNumber = self.receiveNumber
        }
    }
}
