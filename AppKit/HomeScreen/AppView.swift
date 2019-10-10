//
//  AppView.swift
//  AppKit
//
//  Created by Tran Thien Khiem on 2019-10-09.
//  Copyright © 2019 Tran Thien Khiem. All rights reserved.
//

import SwiftUI

struct AppView: View {
    
    let applications: [Application]
    
    /// The body
    var body: some View {
        TabView {
            HomeView(applications: applications)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Message")
                .tabItem {
                    Image(systemName: "message")
                    Text("Home")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(applications: [
            Application(
                icon: Image(systemName: "creditcard"), title: "Payment"
            )
                { _ in
                    AnyView(Text("AR Kit"))
                },
            Application(
                icon: Image(systemName: "message"), title: "Message"
            )
                { _ in
                    AnyView(Text("AR Kit"))
                },
        ])
    }
}
