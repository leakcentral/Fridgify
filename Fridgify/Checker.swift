import SwiftUI

class Checker : ObservableObject {
    @Published var fridge: String
    @Published var expirationDates: [String: Int] = [:]
    var fridgeList: [String]
    
    init(fridge: String? = nil) {
            if let fridge = fridge {
                self.fridge = fridge
                fridgeList = fridge.components(separatedBy: "\n")
                for food in fridgeList {
                    for(key, value) in myDictionary{
                        if(food == key) {
                            expirationDates[food] = value
                        }
                    }
                }
                
            } else {
                self.fridge = "Nothing"
                fridgeList = ["Nothing"]
                expirationDates = ["Nothing" : 0]
                
            }
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
    
    func update(fridge: String) {
        expirationDates["Nothing"] = nil
        self.fridge = fridge
        fridgeList = fridge.components(separatedBy: "\n")
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
    func removeVal(_ check: String) {
        for(key,value) in expirationDates {
            if(check == key) {
                expirationDates[check] = value
                expirationDates[check] = nil
            }
        }
    }
}
