//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Jai  on 02/09/23.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup{
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
