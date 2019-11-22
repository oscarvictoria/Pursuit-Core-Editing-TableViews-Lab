//
//  ViewController.swift
//  EditingTableViews
//
//  Created by Oscar Victoria Gonzalez  on 11/21/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var stuff = [GroceryList]()
    
    var stuffTwo = GroceryList.getTestData()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        stuff = GroceryList.getTestData()
    }

    @IBAction func addItem(segue: UIStoryboardSegue) {
        print("Preparing")
        guard let newItem = segue.source as? AddController,
            let anotherItem = newItem.anItem  else {
            fatalError("some error")
        }
        stuff.insert(anotherItem, at: 0)
        
        let indexPath = IndexPath(row: 0, section: 0)
        
        tableView.insertRows(at: [indexPath], with: .automatic)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stuff.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        let item = stuff[indexPath.row]
        cell.textLabel?.text = item.item
        return cell
    }
}
