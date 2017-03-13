//
//  ViewController.swift
//  HelloWorld2.0
//
//  Created by Stiven Lopera Jaramillo on 3/5/17.
//  Copyright © 2017 Stiven Lopera Jaramillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    @IBOutlet var greetingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        greetingLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goButton(_ sender: UIButton) {
    
        let name = nameField.text!
        greetingLabel.text = "Hi! \(name)"

        let alertController = UIAlertController(title: "Hello World 2.0",
                                                message: "Wellcome \(name) to your second app",
                                                preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK",
                                    style: .default,
                                    handler: nil)
        
        alertController.addAction(okAlert)
        
        present(alertController, animated: true, completion: nil)
        
    }

}

