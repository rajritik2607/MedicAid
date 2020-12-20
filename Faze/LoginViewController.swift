//
//  LoginViewController.swift
//  Faze
//
//  Created by riddhi gupta on 20/12/20.
//

import UIKit
import FirebaseAuth


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
    
    @IBAction func loginPressed(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
                if error == nil{
                     
                    self.performSegue(withIdentifier: "logintotab", sender: nil)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                
                

        }

        
         }
         

     
    }
    


}
