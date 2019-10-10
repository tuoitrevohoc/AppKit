//
//  User.swift
//  AppKit
//
//  Created by Tran Thien Khiem on 2019-10-08.
//  Copyright © 2019 Tran Thien Khiem. All rights reserved.
//

import Foundation

/// The application user
public struct User: Codable {
    
    /// the user id
    public let id: String
    
    /// the user name
    public let username: String
    
    /// the avatar
    public let avatar: String
    
    /// Create a user with information
    /// - Parameter id: the id
    /// - Parameter username: the username
    /// - Parameter avatar: the avatar
    public init(id: String, username: String, avatar: String) {
        self.id = id
        self.username = username
        self.avatar = avatar
    }
}
