//
//  ContentView.swift
//  Fridgify
//
//  Created by Ronak Agarwal, Arnav Patidar, Suhas Kumar, Sohan Malladi on 10/22/22.
// Suhas Test

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0 .. < 5) { item in 
        VStack(alignment: .leading) {

        Text("Item (Placeholder)")
        Text("Expires in idk")
        .font(.subheadline)
        .foregroundColor(.secondary)
        }
        }
        
            //.fontWeight(.bold)
            //.font(.title)
            .padding()
        //Text("Enter your items").padding()
        //let name = readline()
        //Text(name).padding
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
