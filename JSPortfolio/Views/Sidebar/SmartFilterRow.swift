//
//  SmartFilterRow.swift
//  JSPortfolio
//
//  Created by Jason Stout on 9/22/23.
//

import SwiftUI

struct SmartFilterRow: View {
    var filter: Filter
    
    var body: some View {
        NavigationLink(value: filter) {
            Label(filter.name, systemImage: filter.icon)
        }
    }
}

#Preview {
    SmartFilterRow(filter: .all)
}
