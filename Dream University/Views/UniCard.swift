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

struct UniCard: View {
    let uni: University
    
    var body: some View {
        ZStack{
            ScrollView {
                VStack{
                    UniMapMarker(cordinate: uni.locationCoordinate)
                        .frame(height: 250)
                        .shadow(color: .blue, radius: 7, x: 0, y: 0)
                        .mask(Rectangle().padding(.bottom, -20))
                    
                    CircleImage(image: Image(uni.imageName))
                        .offset(y:-111)
                        .padding(.bottom, -111)
                    
                    HStack {
                        Text(uni.name)
                            .font(.system(size: 22))
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.leading, 40)
                       
                        uni.favourite ?
                        Image(systemName: "star.fill")
                            .foregroundColor(.blue)
                        : Image(systemName: "star")
                            .foregroundColor(.blue)
                    }
                    
                    Divider()
                    
                    HStack{
                        Image("map")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .padding(.horizontal,5)
                        Text(uni.address)
                    }
                    
                    Divider()

                    Text(uni.content)
                        .padding()
                    
                    VStack{
                        Divider()
                        InfoView(imageName: "phone.fill", text: uni.phone)
                        InfoView(imageName: "envelope.fill", text: uni.email)
                        Divider()
                    }
                    
                    HStack{
                        SocialIconView(url: uni.website, imageName: "browser")
                        SocialIconView(url: uni.fanpage, imageName: "facebook")
                    }
                }
            }
        }
    }
}

struct UniCard_Previews: PreviewProvider {
    static var previews: some View {
        UniCard(uni: unis[0])
    }
}
