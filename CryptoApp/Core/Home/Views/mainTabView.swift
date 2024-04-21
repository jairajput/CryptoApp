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

            ArticleListView(articles: Article.previewData)

                        .tabItem {
                            Image(systemName: "newspaper.fill")
                            Text("News")
                        }
            PortfolioView()
                .tabItem {
                    Image(systemName: "wallet.pass.fill")
                    Text("PortFolio")
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
