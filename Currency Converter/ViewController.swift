//
//  ViewController.swift
//  Currency Converter
//
//  Created by Jordan Johnson on 3/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var convertedLabel: UILabel!
    
    
    @IBOutlet weak var ConversionRateText: UITextField!
    
    @IBOutlet weak var AmountText: UITextField!
    
    @IBOutlet weak var moneyView: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        convertedLabel.text = ""
    }
    @IBAction func convertButton(_ sender: Any) {
        let rate = Double(ConversionRateText.text!)!
        let amount = Double(AmountText.text!)!
        
        let converted = rate * amount
        if moneyView.selectedSegmentIndex == 0{
            convertedLabel.text = "$\(converted)"
        }else{
            convertedLabel.text = "¥\(converted)"
        }
    }
    
    
}
