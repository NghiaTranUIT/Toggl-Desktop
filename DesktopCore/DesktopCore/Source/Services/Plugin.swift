//
//  Plugin.swift
//  DesktopCore
//
//  Created by Nghia Tran on 10/18/18.
//  Copyright © 2018 com.nsproxy.proxy. All rights reserved.
//

import Foundation

public protocol PluginType {

    @discardableResult
    func process(_ urlRequest: URLRequest) -> URLRequest
}

public struct LoggerPlugin: PluginType {

    @discardableResult
    public func process(_ urlRequest: URLRequest) -> URLRequest {
        print("Log \(urlRequest)")
        return urlRequest
    }
}
