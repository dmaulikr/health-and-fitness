//
//  TabViewController.swift
//  Health & Fitness Tracker
//
//  Created by William Hall on 8/16/17.
//  Copyright © 2017 William Hall. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    //Mark: Outlets and Properties
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var weightButton: UIButton!
    var pickerData: [String] = [String]()
    var dateFormatter = DateFormatter()
    
    //Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Data for the unit picker
        self.unitPicker.dataSource = self
        self.unitPicker.delegate = self
        pickerData = ["lbs", "kgs"]
        
        //Date for date picker
        dateFormatter.dateFormat = "DD/MM/YYYY"
        var selectedDate = dateFormatter.string(from: datePicker.date)
    }
    
    //Instance Methods
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // The number of columns of data
    func numberOfComponentsInPickerView(unitPicker: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ unitPicker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ unitPicker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
}
