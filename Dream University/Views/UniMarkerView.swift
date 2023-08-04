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

struct UniMarkerView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            Image(systemName: "building.columns.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(.blue)
                .cornerRadius(25)
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
                .padding(.bottom, 40)
        }
    }
}

struct MarkerView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            UniMarkerView()
        }
    }
}
