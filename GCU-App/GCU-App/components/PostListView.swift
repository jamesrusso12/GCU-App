//
//  PostView.swift
//  GCU-App
//
//  Created by James Russo on 26/11/24.
//

import SwiftUI

struct PostListView: View {
    let posts: [Post]
    var body: some View {
        VStack {
            ForEach(posts) { post in
                PostCard(post: post)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                    .padding(.vertical, 7)
            }
        }
        .listStyle(.plain)
    }
}
