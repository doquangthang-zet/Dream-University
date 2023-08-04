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

struct ContentView: View {
    @State var isWelcomeActive: Bool = true
    
    var body: some View {
        ZStack {
            if isWelcomeActive {
                WelcomeView(active: $isWelcomeActive)
            } else {
                UniList()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
