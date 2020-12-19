//
//  LoginViewController.swift
//  Faze
//
//  Created by riddhi gupta on 20/12/20.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var details2: UILabel!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var passwordText: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var emailText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        login.applyDesign()
        password.setTextField()
        email.setTextField()
        detail.textColor = labelcolour
        details2.textColor = labelcolour
        emailText.textColor = labelcolour
        passwordText.textColor = labelcolour

        
    }
    


}
