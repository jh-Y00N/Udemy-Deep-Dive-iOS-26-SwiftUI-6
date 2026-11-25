//
//  Extensions.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/7/26.
//

import SwiftUI

extension UIDevice {
    static var isVisionOS: Bool {
        #if os(visionOS)
        return true
        #else
        return false
        #endif
    }
}
