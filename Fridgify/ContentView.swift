//
//  ContentView.swift
//  Fridgify
//
//  Created by Ronak Agarwal, Arnav Patidar, Suhas Kumar, Sohan Malladi on 10/22/22.
// 

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Fridgify")
            .fontWeight(.bold)
            .font(.title)
            .padding()
        Text("Enter your items").padding()
        let name = readline()
        Text(name).padding
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
