//
//  MapViewWithMarker.swift
//  ContactList
//
//  Created by Thang Do Quang on 27/07/2023.
//

import SwiftUI
import MapKit

struct MapViewWithMarker: View {
    let cordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: unis){
            contact in MapAnnotation(coordinate: contact.locationCoordinate) {
                MarkerView()
                    .shadow(radius: 10)
            }
        }
            .onAppear {
                region = MKCoordinateRegion(center: cordinate, span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004))
            }
    }
}

struct MapViewWithMarker_Previews: PreviewProvider {
    static var previews: some View {
        MapViewWithMarker(cordinate: CLLocationCoordinate2D(latitude: 10.729410965174186,longitude: 106.69522548892152))
    }
}
