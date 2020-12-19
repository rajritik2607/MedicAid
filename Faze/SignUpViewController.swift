//
//  SignUpViewController.swift
//  Faze
//
//  Created by riddhi gupta on 12/12/20.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var details2: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var createAccount: UIButton!
    @IBOutlet weak var confirmPassworlLabel: UILabel!
    @IBOutlet weak var confirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        name.setTextField()
        password.setTextField()
        confirmPassword.setTextField()
        email.setTextField()
        createAccount.applyDesign()
        nameLabel.textColor = labelcolour
        confirmPassworlLabel.textColor = labelcolour
        emailLabel.textColor = labelcolour
        passwordLabel.textColor = labelcolour
        details.textColor = labelcolour
        details2.textColor = labelcolour
        
    }
    
      
     
    

}

extension UITextField {
    func setTextField() {
        layer.cornerRadius = 15
        clipsToBounds = true
        layer.borderWidth = 1
        layer.borderColor = CGColor(red: 231.0/255.0, green: 236.0/255.0, blue: 244.0/255.0, alpha: 1.0)
    }
    
}


