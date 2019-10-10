//
//  AppContainer.swift
//  AppKit
//
//  Created by Tran Thien Khiem on 2019-10-08.
//  Copyright © 2019 Tran Thien Khiem. All rights reserved.
//

import SwiftUI

/// The application container
public struct SuperApp: View {
    
    /// the list of applications
    public let applications: [Application]
    
    /// Create an instance of SuperApplication
    /// - Parameter applications: the application
    public init(applications: [Application]) {
        self.applications = applications
    }
    
    /// The body of the AppContainer
    public var body: some View {
        AppView(applications: applications)
    }
}


/// Preview
struct AppContainer_Previews: PreviewProvider {
    static var previews: some View {
        SuperApp(applications: [])
    }
}
