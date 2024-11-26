//
//  HomeView.swift
//  GCU-App
//
//  Created by James Russo on 26/11/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                StoryView()
                Divider()
                PostListView(posts: posts)
            }
            .navigationTitle("Cebrail")
            .navigationBarItems(leading: Image(systemName: "pencil.and.outline"), trailing: Image(systemName: "bell.fill"))
        }
    }
}

#Preview {
    HomeView()
}
