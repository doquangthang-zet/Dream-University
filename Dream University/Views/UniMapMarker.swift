/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Do Quang Thang
  ID: s3891873
  Created  date: 28/07/2023
  Last modified: 03/08/2023
  Acknowledgement: Nothing.
*/

import SwiftUI
import MapKit

struct UniMapMarker: View {
    let cordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: unis){
            contact in MapAnnotation(coordinate: contact.locationCoordinate) {
                UniMarkerView()
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
        UniMapMarker(cordinate: CLLocationCoordinate2D(latitude: 10.729410965174186,longitude: 106.69522548892152))
    }
}
