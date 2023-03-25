//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Campgrounds: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    CampgroundDetail()
                } label: {
                    Text("Campground Name")
                }
                
                NavigationLink {
                    CampgroundDetail()
                } label: {
                    Text("Campground Name")
                }
                
                NavigationLink {
                    CampgroundDetail()
                } label: {
                    Text("Campground Name")
                }
                
            }
            .listStyle(.grouped)
            .navigationTitle("Explore Campgrounds")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Campgrounds()
    }
}
