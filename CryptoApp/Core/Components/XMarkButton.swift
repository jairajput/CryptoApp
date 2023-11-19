//
//  XMarkButton.swift
//  CryptoApp
//
//  Created by Jai  on 24/09/23.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}


#Preview {
    XMarkButton()
}
