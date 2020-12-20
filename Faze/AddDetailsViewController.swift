//
//  AddDetailsViewController.swift
//  Faze
//
//  Created by riddhi gupta on 12/12/20.
//

import UIKit
import FirebaseDatabase
import Firebase

class AddDetailsViewController: UIViewController {

   
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var sex: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var addPerson: UIButton!
    
    @IBOutlet var gender: UITextField!
    @IBOutlet var age: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPerson.applyDesign()
        details.textColor = labelcolour
        heightLabel.textColor = labelcolour
        weightLabel.textColor = labelcolour
        sex.textColor = labelcolour
        height.setTextField()
        weight.setTextField()
        gender.setTextField()
        age.setTextField()

    }
    
    
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        
        guard let genderText = self.gender.text, !genderText.isEmpty else { return}
        guard let weightText = self.weight.text, !weightText.isEmpty else { return}
        guard let heightText = self.height.text, !heightText.isEmpty else { return}
        guard let ageText = self.age.text, !ageText.isEmpty else { return}
        let values = ["gender": genderText,"weight": weightText, "height": heightText,"age": ageText]
        Database.database().reference().child("users").child("\(Auth.auth().currentUser!.uid)").updateChildValues(values) {
          (error:Error?, ref:DatabaseReference) in
          
            if let error = error {
            print("Data could not be saved: \(error).")
          } else {
            print("Data saved successfully!")
          }
        }
        self.performSegue(withIdentifier: "signuptotab", sender: nil)
    }
    


}
extension UIButton{
    func applyDesign(){
        self.layer.cornerRadius = 15
        self.setTitleColor(UIColor.white, for: .normal)
        self.backgroundColor = .systemBlue
        self.clipsToBounds = true
        
    }
}
