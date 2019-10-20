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
            ZStack {
                Color(#colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    HStack {
                        Spacer()
                        Image(systemName: "person.crop.circle")
                    }
                    .padding()
                    AppList(applications: applications)
                    Spacer()
                }
                .edgesIgnoringSafeArea(.top)
            }
            .navigationBarHidden(true)
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
