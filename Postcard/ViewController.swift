//
//  ViewController.swift
//  Postcard
//
//  Created by Matthew Clausing on 10/31/14.
//  Copyright (c) 2014 PartyMashup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the send mail button
        // Test comment 101
        
        // Hidden label to display message text
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // Hidden label to display name text
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.magentaColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        // Change button text string and color; change background color; disable
        mailButton.setTitle("Mail Sent!", forState: UIControlState.Normal)
        mailButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.magentaColor()
        mailButton.enabled = false
        
    }
    
    

}

