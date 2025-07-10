//
//  ActivityView.swift
//  Routine
//
//  Created by shalinth adithyan on 10/07/25.
//

import SwiftUI

struct ActivityView: View {
    var data: Activities
    var activity: Activity

    var body: some View {
        List {
            if activity.description.isEmpty == false {
                Section("Description") {
                    Text(activity.description)
                }
            }

            Section("Progress") {
                Text("Completion count: \(activity.completionCount)")
                Text(" Streak: \(streakCount()) days")
                    .foregroundStyle(.orange)
            }

            Section {
                Button(" Mark as Completed") {
                    markCompletedToday()
                }
                .disabled(alreadyMarkedToday())
            }

            if !activity.completedDates.isEmpty {
                Section("Completed Dates") {
                    ForEach(activity.completedDates.sorted(by: >), id: \.self) { date in
                        Text(date.formatted(date: .abbreviated, time: .omitted))
                    }
                }
            }
        }
        .navigationTitle(activity.title)
    }

    // MARK: - Logic

    func today() -> Date {
        Calendar.current.startOfDay(for: Date())
    }

    func alreadyMarkedToday() -> Bool {
        let today = today()
        return activity.completedDates.contains(today)
    }

    func markCompletedToday() {
        guard let index = data.activities.firstIndex(of: activity) else { return }

        var updated = activity
        let today = today()

        // Only add if not already marked today
        if !updated.completedDates.contains(today) {
            updated.completedDates.append(today)
            updated.completionCount = updated.completedDates.count
            data.activities[index] = updated
        }
    }

    func streakCount() -> Int {
        let sortedDates = activity.completedDates.map { Calendar.current.startOfDay(for: $0) }.sorted(by: >)
        guard !sortedDates.isEmpty else { return 0 }

        var streak = 0
        var checkDate = Calendar.current.startOfDay(for: Date())

        for date in sortedDates {
            if Calendar.current.isDate(date, inSameDayAs: checkDate) {
                streak += 1
                checkDate = Calendar.current.date(byAdding: .day, value: -1, to: checkDate)!
            } else {
                break
            }
        }
        return streak
    }
}

#Preview {
    ActivityView(data: Activities(), activity: .example)
}
