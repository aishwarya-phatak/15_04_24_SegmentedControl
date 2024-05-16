//
//  ViewController.swift
//  15_04_24_SegmentedControl
//
//  Created by Vishal Jagtap on 16/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nonvegFoodItemsContainer: UIView!
    @IBOutlet weak var vegFoodItemsContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            nonvegFoodItemsContainer.isHidden = false
            vegFoodItemsContainer.isHidden = true
        } else if sender.selectedSegmentIndex == 1{
            nonvegFoodItemsContainer.isHidden = true
            vegFoodItemsContainer.isHidden = false
        } else {
            print(sender.selectedSegmentIndex)
        }
    }
}
