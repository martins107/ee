//
//  ViewController.swift
//  ee
//
//  Created by Apps2T on 26/9/22.
//

import UIKit

class MartinVC: UIViewController {

    @IBOutlet weak var etUserName: UITextField!
    @IBOutlet weak var etPass: UITextField!
    
    var userName : String = ""
    var userPass : String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func btnSignIn(_ sender: Any) {
        
        if etUserName != nil && etPass != nil{
            
            userName = etUserName.text!
            userPass = etPass.text!
            
            if userName.isEmpty || userPass.isEmpty{
                print("Campos no rellenados")
            }
            else{
                performSegue(withIdentifier: "loginToHome", sender: nil)
            }
            
        }
        
    }
    
}

