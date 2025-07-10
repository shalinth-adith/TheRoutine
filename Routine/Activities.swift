//
//  Activities.swift
//  Routine
//
//  Created by shalinth adithyan on 10/07/25.
//

import Foundation

@Observable
class Activities{
    var activities: [Activity] {
        didSet{
            if let encoded = try? JSONEncoder().encode(activities){
                UserDefaults.standard.set(encoded, forKey: "activities")
            }
        }
    }
    init(){
        if let saved = UserDefaults.standard.data(forKey: "activities"){
            if let decoded = try? JSONDecoder().decode([Activity].self, from: saved){
                self.activities = decoded
                return
            }
        }
        activities = []
    }
}
