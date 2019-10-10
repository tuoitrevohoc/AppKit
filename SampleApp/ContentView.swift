//
//  ContentView.swift
//  SampleApp
//
//  Created by Tran Thien Khiem on 2019-10-09.
//  Copyright © 2019 Tran Thien Khiem. All rights reserved.
//

import SwiftUI
import AppKit


struct ContentView: View {
    
    /// The Content View
    var body: some View {
        SuperApp(applications: [
            Application(
                icon: Image(systemName: "creditcard"), title: "Payment"
            )
            { _ in
                AnyView(
                    Text("Sample Application")
                        .navigationBarTitle("Sample Application", displayMode: .inline)
                )
            }
        ])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
