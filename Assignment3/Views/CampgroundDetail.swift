//
//  CampgroundDetail.swift
//  Assignment3
//
//  Created by user231253 on 3/24/23.
//

import SwiftUI
import MapKit

struct CampgroundDetail: View {
    
    var campground : CampgroundModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text(campground.name)
                    .font(.system(size: 28))
                    .padding(.horizontal)
                Text(campground.description)
                    .font(.system(size: 18))
                    .padding(.horizontal)
                ScrollView(.horizontal) {
                    LazyHGrid(rows: [GridItem()]) {
                        ForEach(campground.images.prefix(4)) { image in
                            ImageCardView(url: image.url)
                        }
                    }
                }
                .padding(.horizontal)
                MapView(coordinate: CLLocationCoordinate2D(latitude: Double(campground.latitude)!, longitude: Double(campground.longitude)!))
                    .frame(height: 200)
            }
        }
    }
}


