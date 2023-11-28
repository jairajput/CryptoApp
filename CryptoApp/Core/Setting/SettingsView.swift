//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Jai  on 19/11/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var username: String = ""
        @State private var email: String = ""
        @State private var notificationsEnabled: Bool = false

        var body: some View {
            NavigationView {
                Form {
                    Section(header: Text("User Information")) {
                        TextField("Username", text: $username)
                        TextField("Email", text: $email)
                    }

                    Section(header: Text("Preferences")) {
                        Toggle(isOn: $notificationsEnabled) {
                            Text("Enable Notifications")
                        }
                    }

                    Section {
                        Button("Save Changes") {
                            // Add action to save changes
                        }
                    }
                }
                .navigationBarTitle("Settings")
            }
        }
    }



#Preview {
    SettingsView()
}
