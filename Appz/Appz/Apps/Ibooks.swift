//
//  Ibooks.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    struct Ibooks: ExternalApplication {
        
        public typealias ActionType = Applications.Ibooks.Action
        
        public let scheme = "itms-Books:"
        public let fallbackURL = "https://itunes.apple.com/us/app/ibooks/id364709193?mt=8"
        public let appStoreId = "364709193"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Ibooks {
    
    enum Action {
        case open
    }
}

extension Applications.Ibooks.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}
