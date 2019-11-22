//
//  GroceryList .swift
//  EditingTableViews
//
//  Created by Oscar Victoria Gonzalez  on 11/21/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

struct GroceryList {
    var item: String

    static func getTestData() -> [GroceryList] {
        var someItems = [GroceryList]()
        let grocerieItems = ["Fruit", "Paper", "Juice"]

          for groceries in grocerieItems {
          let grocery = GroceryList(item: groceries)
          someItems.append(grocery)

          }



          return someItems
      }
    
}
