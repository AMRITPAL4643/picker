//
//  ViewController.swift
//  picker
//
//  Created by Amrit on 2019-03-20.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    

    @IBOutlet weak var countrypicker: UIPickerView!
    @IBOutlet weak var labelfield: UILabel!
    
    let country = ["A","B","C","D"]

    override func viewDidLoad() {
        super.viewDidLoad()
        countrypicker.delegate = self
        countrypicker.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.country.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.country[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.labelfield.text = country[countrypicker.selectedRow(inComponent: 0)]
    }

}

