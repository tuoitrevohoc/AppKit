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
            icon.frame(width: 80.0, height: 80.0, alignment: .center)
                .scaledToFill()
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .shadow(color: Color.black.opacity(0.05), radius: 10.0, x: 0.0, y: 3.0)
                )
            Text(title).bold()
                .font(Font.caption)
                .foregroundColor(Color.black.opacity(0.7))
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
