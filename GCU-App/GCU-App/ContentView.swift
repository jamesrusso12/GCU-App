//
//  ContentView.swift
//  GCU-App
//
//  Created by James Russo on 26/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            NotificationsView()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
        }
    }
}

#Preview {
    ContentView()
}
