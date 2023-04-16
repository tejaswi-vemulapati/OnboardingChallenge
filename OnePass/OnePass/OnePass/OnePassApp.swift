//
//  OnePassApp.swift
//  OnePass
//
//  Created by Dax Patel on 4/15/23.
//

import SwiftUI
import Firebase

@main
struct OnePassApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
//            NavigationView {
//                EditPostView()
//            }
//            //FeedView()
            ContentView()
        }
    }
}
