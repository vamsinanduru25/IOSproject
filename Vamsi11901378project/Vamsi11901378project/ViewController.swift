//
//  ViewController.swift
//  Vamsi11901378project
//
//  Created by Student on 19/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var pasword: UITextField!
    @IBAction func Signin(_ sender: Any) {
        if(username.text=="vamsi" && pasword.text=="12345"){
        performSegue(withIdentifier: "uname", sender: self)
    }
        else{
            let okHandler1={(action: UIAlertAction)->Void in
                
            }
            let alert=UIAlertController(title: "WARNING", message: "No User Found!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: okHandler1))
            alert.addAction(UIAlertAction(title: "CANCEL", style: .default, handler: okHandler1))
            self.present(alert, animated: true, completion: nil)
        }
}

}
