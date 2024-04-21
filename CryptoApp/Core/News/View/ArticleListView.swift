//
//  ArticleListView.swift
//  CryptoApp
//
//  Created by Jai  on 22/04/24.
//

import SwiftUI
struct ArticleListView: View {
    let articles: [Article]
    @State private var err : String = ""

    var body: some View {
        NavigationView {
            VStack {
                // Custom Navigation Bar
                HStack {
                    Spacer()
                    Text("Headline")
                        .font(.title)
                        .bold()
                        .padding(.vertical, 10)
                    Spacer()
                    
                    // Add Button Here
                    Button(action: {
                        // Handle button action here
//                        Task {
//                                        do {
//                                            try await Authentication().logout()
//                                        } catch let e {
//                                            err = e.localizedDescription
//                                        }
//                                    }
                    }) {
                        Text("L")
                        .font(.title)
                            .foregroundColor(.blue)
                            .padding(8)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                }
                .background(Color(UIColor.systemBackground))
                
                List {
                    ForEach(articles) { article in
                        ZStack {
                            NavigationLink(destination: NewsDetailView(article: article)) {
                                EmptyView()
                            }
                            .opacity(0)
                            .buttonStyle(PlainButtonStyle())
                            ArticleRowView(article: article)
                        }
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .listRowSeparator(.hidden)
                    }
                }
                .listStyle(.plain)
            }
            .navigationBarHidden(true)
        }
    }
}

struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListView(articles: Article.previewData)
    }
}
