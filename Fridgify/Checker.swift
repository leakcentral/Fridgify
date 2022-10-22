import SwiftUI
import AppKit

class Checker {
    var fridgeList: [String]
    var expirationDates: [String: Int] = [:]
    init(fridgeList: [String]) {
        self.fridgeList = fridgeList
    }

    var myDictionary : [String: Int] = ["Milk" : 10, "Tomatoes" : 14, "Fish" : 4, "Chicken" : 4, "Cottage Cheese" : 10]

    func createList() {
        for food in fridgeList {
            for(key, value) in myDictionary{
                if(food == key) {
                    expirationDates[food] = value
                }
            }
        }
    }
    func incrementListByNum(by amount: Int) {
        for(key, value) in expirationDates {
            expirationDates[key] = value - amount
        }
    }
    func incrementList() {
        for(key, value) in expirationDates {
            expirationDates[key] = value - 1
        }
    }

}



