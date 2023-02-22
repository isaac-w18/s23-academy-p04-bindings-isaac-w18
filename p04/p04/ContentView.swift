//
//  ContentView.swift
//  p04
//
//  Created by Isaac Frank on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var college = ""
    
    let colleges = ["Clemson", "Duke", "Ohio State", "UNC", "Wake Forest"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("College:", selection: $college) {
                        Text("Clemson").tag("Clemson")
                        Text("Duke").tag("Duke")
                        Text("Ohio State").tag("Ohio State")
                        Text("UNC").tag("UNC")
                        Text("Wake Forest").tag("Wake Forest")
                    }
                } header: {
                    Text("Choose your college!")
                }
                
                NavigationLink(destination: MascotView(college: $college)) {
                    Text("See Mascot")
                }
                
            }
            .navigationTitle("Mascot Finder")
        }
    }
}

struct MascotView: View {
    @Binding var college: String
    
    var body: some View {
        Image(college + " Mascot")
            .resizable()
            .scaledToFit()
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
