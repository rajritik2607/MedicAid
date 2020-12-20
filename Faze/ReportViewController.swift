//
//  ReportViewController.swift
//  Faze
//
//  Created by Ritik Suryawanshi on 20/12/20.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class ReportViewController: UIViewController {
    
    var ref : DatabaseReference!
    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var Age: UILabel!
    
    @IBOutlet var Sex: UILabel!
    
    @IBOutlet var Height: UILabel!
    
    @IBOutlet var Bmi: UILabel!
    
    @IBOutlet var Weight: UILabel!
    
    
    @IBOutlet var sickprob: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let uid = Auth.auth().currentUser?.uid else
        {
            return
        }
         ref = Database.database().reference()
        let userReference = ref.child("users").child(uid)
        
        userReference.observeSingleEvent(of: .value, with: { (snapshot) in
        
        if let dictionary = snapshot.value as? [String: AnyObject]
         {
                    let nameText = dictionary["name"] as! String
                   
                    
                    let weightText = dictionary["weight"] as! String
                    let heightText = dictionary["height"] as! String
                    let genderText = dictionary["gender"] as! String
                    
                    let ageText = dictionary["age"] as! String
                    let sicktext = dictionary["sickprob"] as! String
            
                   
                                
            var bmical : Float
            
            var heightreal : Float = Float(heightText)!/100
            var weightreal : Float = Float(weightText)!
            bmical = weightreal / (heightreal * heightreal)
        
        self.name.text = nameText
        
        self.Weight.text = weightText
        self.Height.text = heightText
       
        self.Age.text = ageText
        self.Sex.text = genderText
            self.Bmi.text = String(bmical)
            self.sickprob.text = sicktext
            
            
        }
        })
    }


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


