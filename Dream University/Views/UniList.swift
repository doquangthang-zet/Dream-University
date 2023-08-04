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

struct UniList: View {
    @AppStorage("isDarkMode") private var isDark = false
    @State var searchText = ""
    @State private var listOfUni: [University] = unis
    @State private var isShowBest = false
    
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                Toggle("Show best universities", isOn: $isShowBest)
                    .padding(.horizontal)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                Divider()
                
                List(universities, id: \.self.id){ uni in
                    NavigationLink{
                        UniCard(uni: uni)
                    } label: {
                        UniRow(uni: uni)
                    }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("University Rank 🏫")
                .searchable(text: $searchText, prompt: "Search University")
            }
            .toolbar{
                ToolbarItem(placement:ToolbarItemPlacement.navigationBarTrailing) {
                    Button(action: {isDark.toggle()}, label: {
                        isDark ? Label("Dark", systemImage: "moon.circle.fill"):Label("Dark", systemImage: "moon.circle")
                    })
                }
            }
            .padding(5)
        }
        .environment(\.colorScheme, isDark ? .dark : .light)
    }
    
    var universities: [University] {
        guard !searchText.isEmpty else { return isShowBest ? listOfUni.filter {$0.favourite == true}
            : listOfUni
        }
        return isShowBest ? listOfUni.filter { $0.name.localizedCaseInsensitiveContains(searchText) && $0.favourite == true
        } : listOfUni.filter {
            $0.name.localizedCaseInsensitiveContains(searchText)
        }
    }
}

struct UniList_Previews: PreviewProvider {
    static var previews: some View {
        UniList()
    }
}

