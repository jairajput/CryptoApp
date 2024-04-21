//
//  NewsHeaderView.swift
//  CryptoApp
//
//  Created by Jai  on 22/04/24.
//

import SwiftUI

struct NewsHeaderView: View {
    var article : Article
    @State private var isAnimatingImage:Bool = false
    
    var body: some View {
        ZStack {
            // Your other content here
            
            AsyncImage(url: article.imageURL) { phase in
                switch phase {
                case .empty:
                    HStack {
                        Spacer()
                        ProgressView()
                        Spacer()
                    }
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: .infinity) // Stretch to full screen
                case .failure(let error):
                    Image(systemName: "photo")
                @unknown default:
                    fatalError()
                }
            }
            .scaledToFit()
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}
#Preview {
    NewsHeaderView(article: .previewData[0])
}
