//
//  ModelData.swift
//  ContactList
//
//  Created by Thang Do Quang on 27/07/2023.
//

import Foundation
import CoreLocation

var contacts: [Contact] = Bundle.main.decode(file: "contacts.json")

// How to decode a json file into a struct
// Extension to decode JSON locally
extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) from bundle.")
        }
        
        return loadedData
    }
}
