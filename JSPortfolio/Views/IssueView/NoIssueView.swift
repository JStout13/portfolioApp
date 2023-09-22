//
//  NoIssueView.swift
//  JSPortfolio
//
//  Created by Jason Stout on 9/22/23.
//

import SwiftUI

struct NoIssueView: View {
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        Text("No Issue Selected")
            .font(.title)
            .foregroundStyle(.secondary)
        
        Button("New Issue", action: dataController.newIssue)
    }
}

#Preview {
    NoIssueView()
}
