//
//  MainVC.swift
//  LoginProject
//
//  Created by Michael Renninger on 12/17/14.
//  Copyright (c) 2014 Michael Renninger. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    // @IBOutlets
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        usernameLbl.text = NSUserDefaults.standardUserDefaults().objectForKey(USERNAME_KEY) as? String
        passwordLbl.text = NSUserDefaults.standardUserDefaults().objectForKey(PASSWORD_KEY) as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
