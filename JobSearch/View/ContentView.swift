//
//  ContentView.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TabBarViewModel()

        var body: some View {
            ZStack(alignment: .bottom) {
            TabView(selection: $viewModel.selectedIndex) {
                SearchView()
                    .tag(0)
                FavoritesView()
                    .tag(1)
                ResponsesView()
                    .tag(2)
                MessagesView()
                    .tag(3)
                ProfileView()
                    .tag(4)
            }
            .ignoresSafeArea()

                        HStack(spacing: 0) {
                            ForEach(viewModel.tabItems, id: \.self) { tab in
                                TabBarItemView(tab: tab, viewModel: self.viewModel)
                            }
                        }
                        .frame(height: 50)
                        .background(Color.white)
                        .ignoresSafeArea()
                    }
        }
    
    private struct TabBarItemView: View {
           let tab: TabItem
           @ObservedObject var viewModel: TabBarViewModel

           var body: some View {
               VStack {
                   Image(systemName: tab.image)
                       .resizable()
                       .scaledToFit()
                       .frame(width: 24, height: 24)
                       .foregroundColor(viewModel.selectedIndex == tab.tag ? .blue : .gray)
                   Text(tab.title)
                       .font(.system(size: 12))
                       .foregroundColor(viewModel.selectedIndex == tab.tag ? .blue : .gray)
               }
               .padding()
               .onTapGesture {
                   viewModel.selectTab(index: tab.tag)
               }
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
