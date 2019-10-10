//
//  AppContext.swift
//  AppKit
//
//  Created by Tran Thien Khiem on 2019-10-08.
//  Copyright © 2019 Tran Thien Khiem. All rights reserved.
//

import Foundation

/// The application context
public struct AppContext {
    
    /// the current user
    public let currentUser: User
    
    /// The current user
    /// - Parameter currentUser: the current user
    public init(currentUser: User) {
        self.currentUser = currentUser
    }
}
