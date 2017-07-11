//
//  ViewController.swift
//  SummerPracticeDamir
//
//  Created by itisioslab on 10.07.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var regeistraionButton: UIButton!
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func checkFields() -> Bool {
        var isFieldsCorrect = false
        
        if loginTF.text == "Damir" && passwordTF.text == "qwerty"  {
            isFieldsCorrect = true
        }
        
        return isFieldsCorrect
    }

    
    @IBAction func loginButtonPressed(_ loginButton: UIButton) {
        
        let isOkay = checkFields()
        
        if isOkay == true {
            loginButton.setTitle("Ok", for: .normal)
            performSegue(withIdentifier: "join", sender: nil)
        }
        
        loginButton.setTitle("Error", for: .normal)
    }
}

