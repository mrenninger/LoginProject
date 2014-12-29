//
//  LoginVC.swift
//  LoginProject
//
//  Created by Michael Renninger on 12/17/14.
//  Copyright (c) 2014 Michael Renninger. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    // @IBOutlets
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateSegue" {
            var createAccountVC = segue.destinationViewController as CreateAccountVC
            createAccountVC.delegate = self
        }
        
        if segue.identifier == "loginToMainSegue" {
            
        }
    }
    

    
    // @IBActions
    @IBAction func loginBtnPressed(sender: UIButton) {
        let savedUsername = NSUserDefaults.standardUserDefaults().objectForKey(USERNAME_KEY) as String
        let savedPassword = NSUserDefaults.standardUserDefaults().objectForKey(PASSWORD_KEY) as String
        println(savedUsername)
        println(savedPassword)
        
        if usernameTF.text == savedUsername && passwordTF.text == savedPassword {
            performSegueWithIdentifier("loginToMainSegue", sender: self)
        }
    }
    
    @IBAction func createAccountBtnPressed(sender: UIButton) {
        performSegueWithIdentifier("loginToCreateSegue", sender: self)
    }
}

extension LoginVC: CreateAccountVCDelegate {
    func accountCreated() {
        performSegueWithIdentifier("loginToMainSegue", sender: self)
    }
}