//
//  SignUpViewController.swift
//  Faze
//
//  Created by riddhi gupta on 12/12/20.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import Firebase


class SignUpViewController: UIViewController {
    
    var ref : DatabaseReference!

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
        
        
        ref = Database.database().reference()
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
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        
        if password.text != confirmPassword.text {
                          let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
                          let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                          
                          alertController.addAction(defaultAction)
                          self.present(alertController, animated: true, completion: nil)
                      
        }
        else{
            
       signIn()
        }
    }
    
    func signIn() {
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (authResult, error) in
            if error == nil {
                guard let nameText = self.name.text, !nameText.isEmpty else { return}
                guard let emailText = self.email.text, !emailText.isEmpty else { return}
                guard let passwordText = self.password.text, !passwordText.isEmpty else { return}
                let values = ["name": nameText, "email": emailText, "password": passwordText]
             Database.database().reference().child("users").child("\(Auth.auth().currentUser!.uid)").updateChildValues(values) {
              (error:Error?, ref:DatabaseReference) in
              
                if let error = error {
                print("Data could not be saved: \(error).")
              } else {
                print("Data saved successfully!")
              }
            }
            self.performSegue(withIdentifier: "signuptosignup", sender: self)
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



extension UITextField {
    func setTextField() {
        layer.cornerRadius = 15
        clipsToBounds = true
        layer.borderWidth = 1
        layer.borderColor = CGColor(red: 231.0/255.0, green: 236.0/255.0, blue: 244.0/255.0, alpha: 1.0)
    }
    
}


