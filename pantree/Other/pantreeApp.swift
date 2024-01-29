//
//  pantreeApp.swift
//  pantree
//
//  Created by Anna Wu on 1/17/24.
//

import FirebaseCore
import SwiftUI

@main
struct pantreeApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

//import SwiftUI
//import SwiftData
//
//@main
//struct pantreeApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//        .modelContainer(for: [Branch.self, Leaf.self])
//    }
//}
