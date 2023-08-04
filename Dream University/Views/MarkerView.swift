//
//  MarkerView.swift
//  ContactList
//
//  Created by Thang Do Quang on 27/07/2023.
//

import SwiftUI

struct MarkerView: View {
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "building.columns.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(Color("rmit_red"))
                .cornerRadius(25)
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
                .foregroundColor(Color("rmit_red"))
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
            MarkerView()
        }
    }
}
