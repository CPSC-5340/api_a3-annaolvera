//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Campgrounds: View {
    
    @ObservedObject var campgroundsVM = CampgroundsViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(campgroundsVM.campgroundsData) { campground in
                    NavigationLink {
                        CampgroundDetail(campground: campground)
                    } label: {
                        Text(campground.name)
                    }
                }
            }
            .task {
               await campgroundsVM.fetchData()
            }
            .listStyle(.grouped)
            .navigationTitle("Explore Campgrounds")
            .alert(isPresented: $campgroundsVM.hasAnError, error: campgroundsVM.error) {
                Text("There is an error. Please try again.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Campgrounds()
    }
}
