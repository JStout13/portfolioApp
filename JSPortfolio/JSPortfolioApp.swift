//
//  JSPortfolioApp.swift
//  JSPortfolio
//
//  Created by Jason Stout on 9/21/23.
//

import SwiftUI

@main
struct JSPortfolioApp: App {
    @StateObject var dataController = DataController()
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
            .onChange(of: scenePhase) { oldValue, newValue in
                dataController.save()
            }
        }
    }
}
