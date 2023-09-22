//
//  SidebarViewToolbar.swift
//  JSPortfolio
//
//  Created by Jason Stout on 9/22/23.
//

import SwiftUI

struct SidebarViewToolbar: View {
    @EnvironmentObject var dataController: DataController
    @State private var showingAwards: Bool = false
    
    var body: some View {
        Button(action: dataController.newTag) {
            Label("Add Tag", systemImage: "plus")
        }
        
        Button {
            showingAwards.toggle()
        } label: {
            Label("Show Awards", systemImage: "rosette")
        }
        .sheet(isPresented: $showingAwards, content: AwardsView.init)
        
        #if DEBUG
        Button {
            dataController.deleteAll()
            dataController.createSampleData()
        } label: {
            Label("ADD SAMPLES", systemImage: "flame")
        }
        #endif
    }
}

#Preview {
    SidebarViewToolbar()
}
