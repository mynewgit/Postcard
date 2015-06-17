//
//  ViewController.swift
//  Postcard
//
//  Created by Ryan McRae on 2015-06-16.
//  Copyright (c) 2015 Ryan McRae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessagetextfield: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessagetextfield.text
        messageLabel.textColor = UIColor.redColor()
        enterMessagetextfield.text = ""
        enterMessagetextfield.resignFirstResponder()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
    }

}

