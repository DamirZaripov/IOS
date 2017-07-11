//
//  RegistrationViewController.swift
//  SummerPracticeDamir
//
//  Created by itisioslab on 10.07.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import UIKit

class RegistrationViewController: ViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var surnameTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func endRegistrationButtonPressed(_ endRegistration: UIButton) {
        
        if (nameTF.text!.isEmpty && surnameTF.text!.isEmpty && cityTF.text!.isEmpty && ageTF.text!.isEmpty) == false {
            endRegistration.setTitle("Ok", for: .normal)
            performSegue(withIdentifier: "join", sender: nil)
        }
        
        endRegistration.setTitle("Error", for: .normal)
    }
}
