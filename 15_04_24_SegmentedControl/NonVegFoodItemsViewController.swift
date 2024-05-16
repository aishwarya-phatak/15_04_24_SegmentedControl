//
//  NonVegFoodItemsViewController.swift
//  15_04_24_SegmentedControl
//
//  Created by Vishal Jagtap on 16/05/24.
//

import UIKit

class NonVegFoodItemsViewController: UIViewController {

    @IBOutlet weak var nonVegFoodItemsTableView: UITableView!
    var nonvegFoodItems = ["Biryani", "Chicken", "Kabab"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nonVegFoodItemsTableView.delegate = self
        nonVegFoodItemsTableView.dataSource = self
    }
}

extension NonVegFoodItemsViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.nonVegFoodItemsTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = nonvegFoodItems[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nonvegFoodItems.count
    }
}

extension NonVegFoodItemsViewController : UITableViewDelegate{
    
}
