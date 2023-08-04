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

struct CircleImage: View {
    let image: Image
    
    var body: some View {
        ZStack{
            image
                .resizable()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color(.white), lineWidth: 4)
                )
                .shadow(color: .blue, radius: 7)
                .frame(width: 200, height: 200)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image(unis[1].imageName))
    }
}
