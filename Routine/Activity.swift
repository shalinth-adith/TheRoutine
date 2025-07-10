//
//  Activity.swift
//  Routine
//
//  Created by shalinth adithyan on 10/07/25.
//

import Foundation


struct Activity : Codable,Equatable,Identifiable {
    var id = UUID()
    var title : String
    var description : String
    var completionCount = 0
    
    static let example = Activity(title: "Example Activity", description: "This is an example activity")
 }
