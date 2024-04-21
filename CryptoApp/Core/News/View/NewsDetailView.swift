//
//  NewsDetailView.swift
//  CryptoApp
//
//  Created by Jai  on 22/04/24.
//

import SwiftUI

struct NewsDetailView: View {
    var article: Article
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                NewsHeaderView(article: article)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(article.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)

                    Text(article.source.name)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    Text(article.descriptionText)
                        .multilineTextAlignment(.leading)
                      
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                }
                .frame(maxWidth: .infinity)
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding(.horizontal, 1)
            }
            .padding(.top, 20)
        }
        .navigationBarTitle(article.title, displayMode: .inline)
        .edgesIgnoringSafeArea(.top)
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView(article: Article.previewData[7])
    }
}
