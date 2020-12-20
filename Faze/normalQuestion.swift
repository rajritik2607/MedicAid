//
//  normalQuestion.swift
//  Faze
//
//  Created by Ritik Suryawanshi on 20/12/20.
//

import Foundation

class normalQuestion {
    
     var list = [normalTest]()
            
            init()
            {
                // Creating a quiz item and appending it to the list
                let item = normalTest(text: "1. Are you feeling like you have high temperature")
                
                // Add the Question to the list of questions
                list.append(item)
                
                // skipping one step and just creating the quiz item inside the append function
                
                list.append(normalTest(text: "2. Are you feeling like you have cold?"))
                
                list.append(normalTest(text: "3. Are you feeling like you are very tired?"))
                
                list.append(normalTest(text: "4. What is your age?"))
                
                list.append(normalTest(text: "5. Have you been consuming junk food?"))
                
                list.append(normalTest(text: "6. Have you experienced any Chronic Obstructive Pulmonary Disease?"))
                
                list.append(normalTest(text: "7. Are you find problem in breathing?"))

                list.append(normalTest(text: "8. Is your surroundings properly sanitised?"))
                
                list.append(normalTest(text: "9. are you experiencing hypertension?"))
                
                list.append(normalTest(text: "10. Do you feel like vomiting?"))
                
                list.append(normalTest(text: "11. Is your stomach paining?"))
                
                list.append(normalTest(text: "12. Is your throat paining?"))
                
                list.append(normalTest(text: "13. Are you experiencing a headache?"))
                
                 list.append(normalTest(text: "14. Are you experiencing body pain?"))
                
               
     
    }
}

