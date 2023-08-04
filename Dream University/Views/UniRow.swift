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

struct UniRow: View {
    let uni: University
    
    var body: some View {
        HStack{
            uni.image
                .resizable()
                .frame(width: 50, height: 50)

            Text(uni.name)
            
            Spacer()
            
            uni.favourite ?
            Image(systemName: "star.fill")
                .foregroundColor(.blue)
            : Image(systemName: "star")
                .foregroundColor(.blue)
        }
    }
}

struct UniRow_Previews: PreviewProvider {
    static var previews: some View {
        UniRow(uni: unis[6])
    }
}
