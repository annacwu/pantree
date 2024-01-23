//
//  pantreeApp.swift
//  pantree
//
//  Created by Anna Wu on 1/17/24.
//

import SwiftUI
import SwiftData

@main
struct pantreeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Branch.self, Leaf.self])
    }
}
