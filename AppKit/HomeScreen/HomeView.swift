//
//  HomeView.swift
//  AppKit
//
//  Created by Tran Thien Khiem on 2019-10-08.
//  Copyright © 2019 Tran Thien Khiem. All rights reserved.
//

import SwiftUI

/// The Home View application
struct HomeView: View {
    
    let applications: [Application]
    
    /// The body
    var body: some View {
        NavigationView {
            VStack {
                AppList(applications: applications)
                Spacer()
            }
            .navigationBarTitle("Home Page")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(applications: [
            Application(
                icon: Image(systemName: "arkit"), title: "Payment"
            )
                { _ in
                    AnyView(Text("AR Kit"))
                },
            Application(
                icon: Image(systemName: "arkit"), title: "Message"
            )
                { _ in
                    AnyView(Text("AR Kit"))
                },
        ])
    }
}
