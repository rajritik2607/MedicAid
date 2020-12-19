//
//  AddDetailsViewController.swift
//  Faze
//
//  Created by riddhi gupta on 12/12/20.
//

import UIKit

class AddDetailsViewController: UIViewController {

   
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var sex: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var addPerson: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        addPerson.applyDesign()
        details.textColor = labelcolour
        heightLabel.textColor = labelcolour
        weightLabel.textColor = labelcolour
        sex.textColor = labelcolour
        height.setTextField()
        weight.setTextField()

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
