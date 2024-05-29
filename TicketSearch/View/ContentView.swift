//
//  ContentView.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var coordinator : AppCoordinator

        var body: some View {

            VStack {
                        Spacer()
                        HStack{
                           content
                        }
                        
                        .frame( height: 50)
                        .padding(12)
                        .background(.white)
                        .mask(RoundedRectangle(cornerRadius: 34, style: .continuous))
                        .shadow(color: Color("Background 2").opacity(0.3), radius: 20, x: 0, y: 20)

                        .overlay(
                            RoundedRectangle(cornerRadius: 24, style: .continuous)
                                .stroke(.linearGradient(colors: [.white.opacity(0.5), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        )

                    }

                    .ignoresSafeArea()
                   
        }
    
    var content : some View{
        
        ForEach(tabItems) { item in
            Spacer()
            Button{
//                self.coordinator.crossToMain()
//                self.coordinator.crossToTab(tab: item.tab)
            } label: {
                
                ZStack{
                    Circle()
                        .frame(width : 50, height: 50)
                        .foregroundColor(coordinator.tabCoordinator == item.tab ? Color("e8e8e8")  : .white)
                    Image(item.icon)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .opacity(coordinator.tabCoordinator == item.tab ? 1 : 0.7)
                    
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coordinator: AppCoordinator())
    }
}
