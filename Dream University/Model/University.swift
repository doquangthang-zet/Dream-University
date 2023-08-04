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

import Foundation
import SwiftUI
import CoreLocation

struct University: Identifiable, Decodable{
    var id: Int
    var name: String
    var email: String
    var phone: String
    var content: String
    var address: String
    var website: String
    var fanpage: String
    var favourite: Bool

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
