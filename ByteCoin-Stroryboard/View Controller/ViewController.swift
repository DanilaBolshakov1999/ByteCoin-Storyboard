//
//  ViewController.swift
//  ByteCoin-Stroryboard
//
//  Created by iOS - Developer on 14.08.2023.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
    
    @IBOutlet var bitcoinLabel: UILabel!
    @IBOutlet var currentLabel: UILabel!
    @IBOutlet var currentPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentPicker.dataSource = self
    }
}

