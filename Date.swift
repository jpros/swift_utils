//
// Created by João Paulo Ros on 14/11/17.
// Copyright (c) 2017 PremierSoft Mobile Solutions. All rights reserved.
// Inspired on Rails ActiveSupport
//

import Foundation

extension Int {
    public var days: Date {
        get {
            return Date(timeIntervalSince1970: Double(self * 86400))
        }
    }
    public var months: Date {
        get {
            return Calendar.current.date(byAdding: .month, value: self, to: Date(timeIntervalSince1970: 0))!
        }
    }

    public var years: Date {
        get {
            return Calendar.current.date(byAdding: .year, value: self, to: Date(timeIntervalSince1970: 0))!
        }
    }
}

extension Date {
    public var from_now : Date {
        get {
            return Date(timeIntervalSince1970: Date().timeIntervalSince1970 + self.timeIntervalSince1970)
        }
    }
    public var ago : Date {
        get {
            return Date(timeIntervalSince1970: Date().timeIntervalSince1970 - self.timeIntervalSince1970)
        }
    }
    public static func +(lhs: Date, rhs: Date) -> Date {
        return Date(timeIntervalSince1970: lhs.timeIntervalSince1970 + rhs.timeIntervalSince1970)
    }

    public static func -(lhs: Date, rhs: Date) -> Date {
        return Date(timeIntervalSince1970: lhs.timeIntervalSince1970 - rhs.timeIntervalSince1970)
    }

    public static func +=(lhs: inout Date, rhs: Date) {
        lhs = Date(timeIntervalSince1970: lhs.timeIntervalSince1970 + rhs.timeIntervalSince1970)
    }

    public static func -=(lhs: inout Date, rhs: Date) {
        lhs = Date(timeIntervalSince1970: lhs.timeIntervalSince1970 - rhs.timeIntervalSince1970)
    }
}