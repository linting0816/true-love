//
//  trueloveViewController.swift
//  true love
//
//  Created by 林育弘 on 2019/4/21.
//  Copyright © 2019 TING. All rights reserved.
//

import UIKit

class trueloveViewController: UIViewController {
    @IBOutlet weak var place: UITextField!
    @IBOutlet weak var age: UISlider!
    @IBOutlet weak var holiday: UISegmentedControl!
    @IBOutlet weak var mind: UISwitch!
    @IBOutlet weak var patient: UISwitch!
    @IBOutlet weak var muchno: UIImageView!
    @IBOutlet weak var muchok: UIImageView!
    @IBOutlet weak var agelabel: UILabel!
    
    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ageChange(_ sender: Any) {
        agelabel.text = "\(Int(age.value))"
    }
    
    
    @IBAction func muchChange(_ sender: Any) {
        
        if
            place.text! == "Taiwan" &&
            holiday.selectedSegmentIndex == 0 &&
            age.value > 28 &&
            patient.isOn &&
        mind.isOn {
            
            muchok.isHidden = false
            muchno.isHidden = true
        }else{
            
            muchno.isHidden = false
            muchok.isHidden = true
        }
            
    }
    
    
}
