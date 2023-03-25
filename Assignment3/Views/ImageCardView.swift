//
//  ImageCardView.swift
//  Assignment3
//
//  Created by user231253 on 3/24/23.
//

import SwiftUI

struct ImageCardView: View {
    
    var url : String
    
    var body: some View {
        AsyncImage(url: URL(string: url)) { image in
            image.resizable()
                .scaledToFit()
                .cornerRadius(5)
            .frame(width: 150, height: 150)        } placeholder: {
            ProgressView()
        }
        
    }
}

struct ImageCardView_Previews: PreviewProvider {
    static var previews: some View {
        ImageCardView(url: "https://www.nps.gov/common/uploads/structured_data/30AD9C86-B408-5598-F21072B2495F43BF.jpg")
    }
}
