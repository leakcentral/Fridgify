//
//  ContentView.swift
//  Fridgify
//
//  Created by Ronak Agarwal, Arnav Patidar, Suhas Kumar, Sohan Malladi on 10/22/22.

import SwiftUI



struct ContentView: View {
    @State private var showScannerSheet = false
    @State private var text: String = ""
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack{
                    if text.count > 0{
                        Text(text)
                    }
                    else{
                        Text("No scan yet").font(.title)
                    }
                }
                    
                      //  RoundedRectangle(cornerRadius: 12)
                        //    .fill(Color.orange)
                          //  .frame(height: 44)
                            //.padding()
                    //}
                .navigationTitle("Fridgify")
                .navigationBarItems(trailing: Button(action: {
                        self.showScannerSheet = true
                    }, label: {
                        Image(systemName: "doc.text.viewfinder")
                            .font(.title)
                    })
                    .sheet(isPresented: $showScannerSheet, content: {
                        self.makeScannerView()
                    })
                    )
            }
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
    
    private func makeScannerView() -> ScannerView {
            ScannerView(completion: { textPerPage in
                if let text = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
                    self.text = text
                }
                self.showScannerSheet = false
            })
        }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

var fridge : [String] = text
var fridgeList : [String] = fridge.components(separatedBy: "\n")
let toCheck = Checker(fridgeList)
toCheck.createList()
print(toCheck.returnFridgeList())
print(toCheck.returnFood("Milk"))
toCheck.setValue("Milk" , 25)
print(toCheck.returnFridgeList())
