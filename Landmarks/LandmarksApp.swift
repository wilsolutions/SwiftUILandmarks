//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Wilson Gomes on 2021-09-24.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
#if os(watchOS)
    .commands{LandmarkCommands()}
#endif
    
#if os(watchOS)
    WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
#endif
    
#if os(macOS)
    Settings {
      LandmarkSettings()
    }
#endif
  }
}
