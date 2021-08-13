//
//  ViewController.swift
//  FancyTextCreator
//
//  Created by mami taniguro on 8/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var shadowButton: UIButton!
    
    var fontSize: CGFloat = 30
    var state = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated
        super.viewDidLoad()
    }


    @IBAction func enterText(_ sender: Any) {
        label.text = textField.text;
        self.resignFirstResponder()
    }
    
    @IBAction func red(_ sender: Any) {
        
        label.textColor = UIColor.red
    }
    
    
    @IBAction func blue(_ sender: Any) {
        
        label.textColor = UIColor.blue
    }
    
    
    @IBAction func green(_ sender: Any) {
        
        label.textColor = UIColor(red: 24.0/225.0, green: 174.0/255.0, blue: 128.0/255, alpha: 1.0)
    }
    
    
    @IBAction func font1(_ sender: Any) {
        
        label.font = UIFont(name: "SugarstyleMillenial-Regular", size: fontSize)
    }
    
    @IBAction func font2(_ sender: Any) {
        
        label.font = UIFont(name: "Moon Flower", size: fontSize)
    }
    
    @IBAction func font3(_ sender: Any) {
        
        label.font = UIFont(name: "LemonMilk", size: fontSize)
    }
    
    
    @IBAction func font4(_ sender: Any) {
        
        label.font = UIFont(name: "Blacksword", size: fontSize)
    }
    
    @IBAction func shadow(_ sender: Any) {
        
        if state == false {
            
            label.layer.shadowColor = UIColor.black.cgColor
            label.layer.shadowOffset = CGSize(width: 2, height: 2)
            label.layer.shadowRadius = 2
            label.layer.shadowOpacity = 0.25
            
            state = true
            
            shadowButton.setTitle("Remove Shadow", for: UIControl.State.normal)
            
        } else {
            
            label.layer.shadowOpacity = 0
            
            state = false
            
            shadowButton.setTitle("Set Shadow", for: UIControl.State.normal)
            
        }
    }
    
    
    @IBAction func small(_ sender: Any) {
        
        fontSize = 30
        label.font = label.font.withSize(fontSize)
        
    }
    
    @IBAction func medium(_ sender: Any) {
        
        fontSize = 50
        label.font = label.font.withSize(fontSize)
        
    }
    
    @IBAction func large(_ sender: Any) {
        
        fontSize = 80
        label.font = label.font.withSize(fontSize)
    }
    
    
}

