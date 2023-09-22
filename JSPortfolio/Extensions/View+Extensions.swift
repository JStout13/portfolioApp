//
//  View+Extensions.swift
//  JSPortfolio
//
//  Created by Jason Stout on 9/22/23.
//

import Foundation
import SwiftUI

extension View {
    func inlineNavigationBar() -> some View {
        #if os(iOS)
        self.navigationBarTitleDisplayMode(.inline)
        #else
        self
        #endif
    }
}
