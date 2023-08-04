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

struct InfoView: View {
    let imageName:String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.blue.gradient)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.white)
                    Text(text)
                        .foregroundColor(.white)
                }
            )
            .padding(.horizontal)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "envelope.fill", text: "122453654")
    }
}
