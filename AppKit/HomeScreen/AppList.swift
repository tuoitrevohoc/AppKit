//
//  AppList.swift
//  AppKit
//
//  Created by Tran Thien Khiem on 2019-10-08.
//  Copyright © 2019 Tran Thien Khiem. All rights reserved.
//

import SwiftUI

/// The application list
struct AppList: View {
    
    /// the list of applications
    let applications: [Application]
    
    /// the body
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Applications")
                    .bold()
                    .font(Font.largeTitle)
                    .foregroundColor(Color.black.opacity(0.5))
                Spacer()
                NavigationLink(destination:
                    Text("All applications")
                        .navigationBarTitle("All applications", displayMode: .inline)
                ) {
                    Text("More")
                        .foregroundColor(Color.black.opacity(0.6))
                    Image(systemName: "ellipsis")
                }
            }
            HStack (alignment: .top, spacing: 20.0) {
                ForEach(applications, id: \.title) { application in
                    NavigationLink(destination: application.render(nil)) {
                        MenuIcon(icon: application.icon, title: application.title)
                    }
                }
            }
        }
        .padding()
    }
}

struct AppList_Previews: PreviewProvider {
    static var previews: some View {
        AppList(applications: [
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
