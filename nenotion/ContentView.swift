//
//  ContentView.swift
//  nenotion
//
//  Created by USER on 09.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""
    var body: some View {
        VStack{
            NavigationStack{
                Text("Заметки")
                    .toolbar {
                      
                    }
                    .navigationBarTitle(Text("NeNotion"))
            }.searchable(text: $searchText)
       
        }   
        TabView {
            NavigationStack() {}
                       .tabItem {
                           Image(systemName: "list.bullet")

                       }
            NavigationStack() {}
                       .tabItem {
                           Image(systemName: "square.and.pencil")

                       }
               }
   
 
  
        }
}

#Preview {
    ContentView()
}
