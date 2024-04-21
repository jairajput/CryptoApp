//
//  ArticleRowView.swift
//  CryptoApp
//
//  Created by Jai  on 22/04/24.
//

import SwiftUI

struct ArticleRowView: View {
    let article: Article
    
    struct NeonEffect: ViewModifier {
        func body(content: Content) -> some View {
            content
                .overlay(
                    content
                    .opacity(0.8)
                )
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            AsyncImage(url: article.imageURL) { phase in
                switch phase {
                case .empty:
                    HStack{
                        Spacer()
                        ProgressView()
                        Spacer()
                    }
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                case .failure:
                    Image(systemName: "photo")
                        .foregroundColor(.white)
                @unknown default:
                    fatalError("Unknown phase.")
                }
            }
            .frame(minHeight: 150, maxHeight: 300)
            .background(Color.gray.opacity(0.8)) // Changed background color here
            .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 7){
                Text(article.title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .lineLimit(3)
                Text(article.captionText)
                    .lineLimit(2)
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            .padding([.horizontal, .bottom])
            .background(Color.black)
        }
        
        .background(Color.black)
        .cornerRadius(10)
        .padding(.vertical, 8)
        .padding(.horizontal)
    }
}

#Preview {
    NavigationView{
        List{
            ArticleRowView(article: .previewData[0])
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            ArticleRowView(article: .previewData[0])
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))

        }
        .listStyle(.plain)

    }
}
