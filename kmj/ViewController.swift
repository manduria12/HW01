//
//  ViewController.swift
//  kmj
//
//  Created by SWUCOMPUTER on 2017. 10. 14..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet var textF: UITextField!
    @IBOutlet var stateLabel: UILabel!
    @IBOutlet var picketDateTime: UIDatePicker!
    @IBOutlet var labelInfo: UILabel!
    @IBOutlet var pickerState: UIPickerView!
    @IBOutlet var trashImageView: UIImageView!
    @IBOutlet var write: UIButton!
    @IBOutlet var trush: UIButton!

    
    let stateArray: Array<String> = ["행복", "슬픔", "화남", "우울", "기쁨", "보통"]
    let trashImage = UIImage(named: "images.png")
    
    @IBAction func button(_ sender: UIButton) {
        if (sender == write) {
            trashImageView.isHidden = true
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .long
            let state: String = self.stateArray[self.pickerState.selectedRow(inComponent:0)]
            self.labelInfo.text = "날짜: " + dateFormatter.string(from: self.picketDateTime.date) + "       기분: " + state
            stateLabel.text = textF.text
        }
        else if sender == trush {
            trashImageView.isHidden = false
    }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
                    return stateArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stateArray[row]
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trashImageView.image = trashImage
        trashImageView.isHidden = true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

