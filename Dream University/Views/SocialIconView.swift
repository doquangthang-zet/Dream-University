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

struct SocialIconView: View {
    let url: String
    let imageName: String
    
    var body: some View {
        Link(destination: URL(string: url)!, label: {
            Image(imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
        })
    }
}

struct SocialIconView_Previews: PreviewProvider {
    static var previews: some View {
        SocialIconView(url: "https://www.hutech.edu.vn", imageName: "browser")
    }
}
