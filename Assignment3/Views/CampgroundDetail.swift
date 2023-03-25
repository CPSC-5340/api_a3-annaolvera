//
//  CampgroundDetail.swift
//  Assignment3
//
//  Created by user231253 on 3/24/23.
//

import SwiftUI

struct CampgroundDetail: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text("Campground Name")
                    .font(.system(size: 24))
                    .padding(.horizontal)
                MapView()
                    .frame(height: 300)
                Text("Description")
                    .font(.system(size: 18))
                    .padding(.horizontal)
                ScrollView(.horizontal) {
                    LazyHGrid(rows: [GridItem()]) {
                        ImageCardView(url: "https://www.nps.gov/common/uploads/structured_data/30AD9C86-B408-5598-F21072B2495F43BF.jpg")
                        ImageCardView(url: "https://www.nps.gov/common/uploads/structured_data/30AD9C86-B408-5598-F21072B2495F43BF.jpg")
                        ImageCardView(url: "https://www.nps.gov/common/uploads/structured_data/30AD9C86-B408-5598-F21072B2495F43BF.jpg")                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct CampgroundDetail_Previews: PreviewProvider {
    static var previews: some View {
        CampgroundDetail()
    }
}
