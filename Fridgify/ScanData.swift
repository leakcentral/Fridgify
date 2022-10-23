//
//  ScanData.swift
//  Fridgify
//
//  Created by Arnav Patidar on 10/22/22.
//

import Foundation


struct ScanData:Identifiable {
    var id = UUID()
    let content:String
    
    init(content:String) {
        self.content = content
    }
}
