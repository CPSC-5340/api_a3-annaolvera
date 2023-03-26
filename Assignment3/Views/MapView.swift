//
//  MapView.swift
//  Assignment3
//
//  Created by user231253 on 3/24/23.
//

import SwiftUI
import MapKit

struct MapView: View {
     
    var coordinate : CLLocationCoordinate2D
    
    var body: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: coordinate, latitudinalMeters: 750, longitudinalMeters: 750)))
    }
}
