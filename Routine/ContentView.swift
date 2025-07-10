//
//  ContentView.swift
//  Routine
//
//  Created by shalinth adithyan on 08/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var data = Activities()
    @State private var addingNewActivity = false
    @State private var showCalendar = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data.activities) { activity in
                    NavigationLink {
                        ActivityView(data: data, activity: activity)
                    } label: {
                        HStack {
                            Text(activity.title)
                            
                            Spacer()
                            
                            Text(String(activity.completionCount))
                                .font(.caption.weight(.black))
                                .padding(5)
                                .frame(minWidth: 50)
                                .background(color(for: activity))
                                .foregroundStyle(.white)
                                .clipShape(.capsule)
                        }
                    }
                }
                .onDelete(perform: delete)
            }
            .navigationTitle("Routine")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button {
                            showCalendar.toggle()
                        } label: {
                            Image(systemName: "calendar")
                        }
                        
                        Button {
                            addingNewActivity.toggle()
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
            }
            .sheet(isPresented: $addingNewActivity) {
                AddActivity(data: data)
            }
            .sheet(isPresented: $showCalendar) {
                CalendarView(data: data)
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        data.activities.remove(atOffsets: offsets)
    }
    
    func color(for activity: Activity) -> Color {
        if activity.completionCount < 3 {
            return .red
        } else if activity.completionCount < 10 {
            return .orange
        } else if activity.completionCount < 20 {
            return .green
        } else if activity.completionCount < 30 {
            return .blue
        } else {
            return .indigo
        }
    }
}

#Preview {
    ContentView()
}

