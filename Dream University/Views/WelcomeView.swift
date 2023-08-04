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

struct WelcomeView: View {
    @Binding var active: Bool
    
    var body: some View {
        ZStack {
            VStack {
                Image("rmit-logo-black")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(50)
                    .frame(width: 350, alignment: .center)
                
                Image("education")
                    .resizable()
                    .frame(width: 180,height: 180, alignment: .center)
                    .shadow(color:.blue, radius: 10)
                Spacer()
                
                Text("Universities for ITers")
                    .font(.custom("Teko-Regular", size: 50))
                    .bold()
                    .multilineTextAlignment(.center)
                Spacer()
                
                Text("\"Great Places To Think Big Thoughts\"")
                    .font(.custom("Lugrasimo-Regular", size: 30))
                   
                    .multilineTextAlignment(.center)
                Spacer()
                
                Button{
                    active = false
                } label: {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.blue.gradient)
                        .frame(width: 150,height: 50)
                        .overlay(
                            HStack{
                                Text("Start")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.system(.largeTitle))
                            }
                        )
                        .shadow(color: .blue, radius: 3)
                        .padding()
                }
                
                InforButtonView()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(active: .constant(true))
    }
}
