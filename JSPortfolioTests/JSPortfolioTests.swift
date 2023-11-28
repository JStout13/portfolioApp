//
//  JSPortfolioTests.swift
//  JSPortfolioTests
//
//  Created by Jason Stout on 11/28/23.
//

import CoreData
import XCTest
@testable import JSPortfolio

class BaseTestCase: XCTestCase {
    var dataController: DataController!
    var managedObjectContext: NSManagedObjectContext!
    
    override func setUpWithError() throws {
        dataController = DataController(inMemory: true)
        managedObjectContext = dataController.container.viewContext
    }
}
