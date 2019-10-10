//
//  MenuIcon.swift
//  AppKit
//
//  Created by Tran Thien Khiem on 2019-10-08.
//  Copyright © 2019 Tran Thien Khiem. All rights reserved.
//

import SwiftUI


/// The menu icon
struct MenuIcon: View {
    
    /// The image icon
    let icon: Image
    
    /// the application title
    let title: String
    
    /// the body
    var body: some View {
        VStack {
            icon.frame(width: 64.0, height: 64.0, alignment: .center)
                .scaledToFill()
                .background(
                    RoundedRectangle(cornerRadius: 5.0)
                        .foregroundColor(Color.white)
                        .shadow(radius: 1.0)
                )
            Text(title).bold()
                .font(Font.caption)
        }
    }
}

struct MenuIcon_Previews: PreviewProvider {
    static var previews: some View {
        MenuIcon(
            icon: Image(systemName: "arkit"),
            title: "Payment"
        )
    }
}
