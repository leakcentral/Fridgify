//
//  ContentView.swift
//  Fridgify
//
//  Created by Ronak Agarwal, Arnav Patidar, Suhas Kumar, Sohan Malladi on 10/22/22.
// Suhas was here

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Spacer()
                    Button("Scan Receipt") {
                        
                    } .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                }
                ForEach(0 ..< 15) { item in
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.orange)
                        .frame(height: 44)
                        .padding()
                }
            }
            .navigationTitle("Fridgify")
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.orange.opacity(0.2))
            
            // Inline appearance (standard height appearance)
            UINavigationBar.appearance().standardAppearance = appearance
            // Large Title appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
