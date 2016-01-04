//
//  GoogleChrome.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleChrome: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleChrome.Action
        
        public let scheme = "googlechrome:"
        public let fallbackURL = "https://www.google.com/chrome/"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleChrome {
    
    public enum Action {
        case Open
    }
}

extension Applications.GoogleChrome.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
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