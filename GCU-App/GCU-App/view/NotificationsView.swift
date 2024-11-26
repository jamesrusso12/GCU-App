//
//  NotificationsView.swift
//  GCU-App
//
//  Created by James Russo on 26/11/24.
//

import SwiftUI

struct Notification: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let type: String // "Business" or "Message"
}

struct NotificationsView: View {
    let notifications: [Notification] = [
        Notification(title: "New Business Lead", description: "You have a new lead from Company X.", type: "Business"),
        Notification(title: "New Message", description: "Hey, are you available for a call?", type: "Message"),
        Notification(title: "Invoice Paid", description: "Invoice #123 has been paid.", type: "Business"),
        Notification(title: "Chat Message", description: "Check out the project updates.", type: "Message")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(notifications) { notification in
                    HStack {
                        Image(systemName: notification.type == "Business" ? "briefcase" : "message")
                            .foregroundColor(notification.type == "Business" ? .blue : .green)
                        VStack(alignment: .leading) {
                            Text(notification.title).bold()
                            Text(notification.description).font(.footnote)
                        }
                    }
                }
            }
            .navigationTitle("Notifications")
        }
    }
}

#Preview {
    NotificationsView()
}
