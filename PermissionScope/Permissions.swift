//
//  Permissions.swift
//  PermissionScope
//
//  Created by Nick O'Neill on 8/25/15.
//  Copyright © 2015 That Thing in Swift. All rights reserved.
//

import Foundation
import CoreLocation

/**
*  Protocol for permission configurations.
*/
@objc public protocol Permission {
    /// Permission type
    var type: PermissionType { get }
}

@objc open class NotificationsPermission: NSObject, Permission {
    open let type: PermissionType = .notifications
    open let notificationCategories: Set<UIUserNotificationCategory>?
    
    public init(notificationCategories: Set<UIUserNotificationCategory>? = nil) {
        self.notificationCategories = notificationCategories
    }
}

@objc open class LocationWhileInUsePermission: NSObject, Permission {
    open let type: PermissionType = .locationInUse
}

@objc open class LocationAlwaysPermission: NSObject, Permission {
    open let type: PermissionType = .locationAlways
}
