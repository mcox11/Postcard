//
//  ViewController.swift
//  Postcard
//
//  Created by Matthew Cox on 9/25/14.
//  Copyright (c) 2014 Matthew Cox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterAMessageTextField: UITextField!
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
        //  Code will evaluate when we press the button
        // Adding a comment here to test git commits
        
        // display MessageTextfield in messagelabel and change label color
        
        messageLabel.hidden = false // unhide label
        messageLabel.text = enterAMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // display nametextfield in nameLabel and change label color
        
        nameLabel.hidden = false // unhide label
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()

        
        // Clear TextFields
        enterAMessageTextField.text = ""
        enterNameTextField.text = ""
        
        // Hide keyboard when button is pressed
        enterAMessageTextField.resignFirstResponder()
        
        // Change button title
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

