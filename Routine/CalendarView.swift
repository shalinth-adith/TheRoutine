//
//  CalendarView.swift
//  Routine
//
//  Created by shalinth adithyan on 10/07/25.
//

import SwiftUI

struct CalendarView: View {
    var data: Activities

    var body: some View {
        NavigationStack {
            List {
                ForEach(data.activities) { activity in
                    Section(activity.title) {
                        if activity.completedDates.isEmpty {
                            Text("No completions yet")
                                .foregroundStyle(.gray)
                        } else {
                            ForEach(activity.completedDates.sorted(by: >), id: \.self) { date in
                                Text(date.formatted(date: .abbreviated, time: .omitted))
                            }
                        }
                    }
                }
            }
            .navigationTitle("Completion Calendar")
        }
    }
}
