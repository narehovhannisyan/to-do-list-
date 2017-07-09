//
//  SecondViewController.swift
//  to-do-list
//
//  Created by Nare Hovhannisyan on 7/7/17.
//  Copyright © 2017 Nare Hovhannisyan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func add(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        if let tempitems = itemsObject as? [String]
        {
            items = tempitems
            items.append(textField.text!)
            print(items)
        }
        else
        {
            items = [textField.text!]
        }
      
    
        UserDefaults.standard.set(items, forKey: "items")
       
        textField.text = ""
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

