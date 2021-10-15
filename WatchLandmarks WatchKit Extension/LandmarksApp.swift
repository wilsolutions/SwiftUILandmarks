//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Wilson Gomes on 2021-10-06.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
