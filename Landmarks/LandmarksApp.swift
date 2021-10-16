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
    WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
    #endif
  }
}
