//
//  LGB+print.swift
//  SwiftTest
//
//  Created by mac_256 on 2018/12/19.
//  Copyright © 2018 mac_256. All rights reserved.
//

import Foundation
import UIKit
public extension LGB {
    
    static func currentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: Date())
    }
    
    public enum preLevel: Int {
        case info = 1
        case debug = 2
        case error = 3
        case none = 4
        
        public func description() -> String {
            switch self {
            case .info:
                return "🦋"
            case .debug:
                return "🐝"
            case .error:
                return "🌹"
            case .none:
                return "  "
            }
        }
    }
    
    public static var defaultLevel: preLevel = .debug;
    public static var preString: String = "";
    
    //String
    public static func log(_ format: String, _ args: CVarArg..., level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(String(format: format, arguments:args))");
        #endif
    }
    
    //AnyObject
    public static func log(_ obj: AnyObject, level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(String(format: "%@", obj as! CVarArg))");
        #endif
    }
    
    //CGPoint
    public static func log(_ point: CGPoint, level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(NSCoder.string(for: point))");
        #endif
    }
    
    //CGRect
    public static func log(_ rect: CGRect, level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(NSCoder.string(for: rect))");
        #endif
    }
    
    //CGSize
    public static func log(_ size: CGSize, level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(NSCoder.string(for: size))");
        #endif
    }
    
    //UIEdgeInsets
    public static func log(_ insets: UIEdgeInsets, level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(NSCoder.string(for: insets))");
        #endif
    }
    
    //CGAffineTransform
    public static func log(_ transform: CGAffineTransform, level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(NSCoder.string(for: transform))");
        #endif
    }
    
    //CGVector
    public static func log(_ vector: CGVector, level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(NSCoder.string(for: vector))");
        #endif
    }
    //UIOffset
    public static func log(_ offset: UIOffset, level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(NSCoder.string(for: offset))");
        #endif
    }
    
    //NSDirectionalEdgeInsets
    @available(iOS 11.0, *)
    public static func log(_ insets: NSDirectionalEdgeInsets, level: preLevel = defaultLevel, fileName: String = #file, line: Int = #line) {
        #if DEBUG
        let prefix = preString.count > 0 ? preString : level.description()
        print(" \(prefix) [\(currentDate())][\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(NSCoder.string(for: insets))");
        #endif
    }
}
