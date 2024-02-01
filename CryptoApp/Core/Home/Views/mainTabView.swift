//
//  mainTabView.swift
//  CryptoApp
//
//  Created by Jai  on 31/01/24.
//

import SwiftUI

struct mainTabView: View {
    var body: some View {
        TabView{
                    HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }

                    NewsView()
                        .tabItem {
                            Image(systemName: "newspaper.fill")
                            Text("News")
                        }

                    UserView()
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("User")
                        }
                }
            }
        }
    

#Preview {
    mainTabView()
}
