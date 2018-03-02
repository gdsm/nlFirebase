//
//  nlLogs.swift
//  nlFirebase
//
//  Created by Gagan on 02/03/18.
//  Copyright © 2018 Neural Labs. All rights reserved.
//

import UIKit

enum nlLogLevel{
    case info, warning, error
}

class nlLogs: NSObject {

    static let shared : nlLogs = nlLogs();
    let canShowInfoLogs : Bool = true;
    let canShowWarnLogs : Bool = true;
    let canShowErrorLogs : Bool = true;

    public func log(msg : String) {
        log(msg: msg, level: .info);
    }

    public func log(msg : String, level : nlLogLevel) {
        
        if ((canShowInfoLogs == true) && (level == .info)){
            print(logLevel(level: level), msg);
        }
        else if ((canShowWarnLogs == true) && (level == .warning)){
            print(logLevel(level: level), msg);
        }
        else if ((canShowErrorLogs == true) && (level == .error)){
            print(logLevel(level: level), msg);
        }
    }
    
    private func logLevel(level:nlLogLevel) -> String {
        
        switch level {
        case .info:
            return "Log Level Info :";
        case .warning:
            return "Log Level Warning :";
        case .error:
            return "Log Level Error :";
        }
        
    }
}
