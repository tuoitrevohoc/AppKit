//
//  Application.swift
//  AppKit
//
//  Created by Tran Thien Khiem on 2019-10-08.
//  Copyright © 2019 Tran Thien Khiem. All rights reserved.
//

import Foundation
import SwiftUI

/// The application
public struct Application {
    
    // render the application
    public typealias ApplicationRender = (AppContext?) -> AnyView
    
    /// the icon
    public let icon: Image
    
    /// the application title
    public let title: String
    
    /// the render function
    public let render: ApplicationRender
    
    /// Create an application
    /// - Parameter icon: the application icon
    /// - Parameter title: the title
    /// - Parameter render: the method to render the application content
    public init(icon: Image, title: String, render: @escaping ApplicationRender) {
        self.icon = icon
        self.title = title
        self.render = render
    }
    
}
