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

struct InforButtonView: View {
    @State private var showingAlert = false
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                showingAlert = true
            } label: {
                Image("alarm")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(.trailing,20)
                    .padding(.bottom,10)
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Student Infor"), message: Text("\(Text("Do Quang Thang - s3891873").underline()) \n This app show some good universities for IT student in Ho Chi Minh City"), dismissButton: .default(Text("Ok!")))
                    }
            }
        }
    }
}

struct InforButtonView_Previews: PreviewProvider {
    static var previews: some View {
        InforButtonView()
    }
}
