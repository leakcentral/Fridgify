import SwiftUI
import AppKit

class Checker {
    var fridgeList: [String]
    var expirationDates: [String: Int] = [:]
    init(_ fridgeList: [String]) {
        self.fridgeList = fridgeList
    }
    var myDictionary : [String: Int] = ["Milk" : 10, "Tomatoes" : 14, "Fish" : 4, "Chicken" : 4, "Cottage Cheese" : 10, "Apples" : 6, "Mango" : 14, "Avocado" : 5, "Cheese" : 12, "Bread" : 13,]
    func createList() {
        for food in fridgeList {
            for(key, value) in myDictionary{
                if(food == key) {
                    expirationDates[food] = value
                }
            }
        }
    }
    func incrementListByNum(_ amount: Int) {
        for(key, value) in expirationDates {
            expirationDates[key] = value - amount
        }
    }
    func incrementList() {
        for(key, value) in expirationDates {
            expirationDates[key] = value - 1
        }
    }
    func returnFridgeList() -> [String: Int] {
        return expirationDates
    }
    func returnFood(_ check: String) -> Int {
        for(key, value) in expirationDates {
            if(check == key) {
                return value
            }
        }
        return 0
    }
    func setValue(_ check: String, _ change: Int) {
        for(key,value) in expirationDates {
            if(check == key) {
                expirationDates[key] = value
                expirationDates[key] = change
            }
        }
    }
}
var fridge : String = "Milk\nFish\nCottage Cheese\nBob"
var fridgeList : [String] = fridge.components(separatedBy: "\n")
let toCheck = Checker(fridgeList)
toCheck.createList()
print(toCheck.returnFridgeList())
print(toCheck.returnFood("Milk"))
toCheck.setValue("Milk" , 25)
print(toCheck.returnFridgeList())