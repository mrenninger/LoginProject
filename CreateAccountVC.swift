//
//  CreateAccountVC.swift
//  LoginProject
//
//  Created by Michael Renninger on 12/17/14.
//  Copyright (c) 2014 Michael Renninger. All rights reserved.
//

import UIKit

protocol CreateAccountVCDelegate {
    func accountCreated()
}

class CreateAccountVC: UIViewController {

    // Constants
    
    // Variables
    var delegate:CreateAccountVCDelegate?
    
    // @IBOutlets
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // @IBActions
    @IBAction func createAccountBtnPressed(sender: UIButton) {
        if passwordTF.text == confirmTF.text && passwordTF.text != nil {
            NSUserDefaults.standardUserDefaults().setObject(usernameTF.text, forKey: USERNAME_KEY)
            NSUserDefaults.standardUserDefaults().setObject(passwordTF.text, forKey: PASSWORD_KEY)
            NSUserDefaults.standardUserDefaults().synchronize()
        }
        
        dismissViewControllerAnimated(true, completion: nil)
        
        delegate?.accountCreated()
    }
    
    @IBAction func cancelBtnPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
