//
//  ViewController.swift
//  ByteCoin-Stroryboard
//
//  Created by iOS - Developer on 14.08.2023.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var bitcoinLabel: UILabel!
    @IBOutlet var currentLabel: UILabel!
    @IBOutlet var currentPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentPicker.dataSource = self
        currentPicker.delegate = self
    }
    
    //MARK: - Private Properties
    
    private var coinManger = CoinManager()
    
    //MARK: - func
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManger.currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManger.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectCurrent = coinManger.currencyArray[row]
        coinManger.getSelect(for: selectCurrent)
    }
}

