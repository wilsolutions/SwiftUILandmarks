//
//  LandmarkDetail.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Wilson Gomes on 2021-10-15.
//

import SwiftUI

struct LandmarkDetail: View {
  @EnvironmentObject var modelData: ModelData
  var landmark: Landmark

  var landmarkIndex: Int {
      modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
  }
  
    var body: some View {
      CircleImage(image: landmark.image.resizable())
          .scaledToFill()
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
      let modelData = ModelData()
      return LandmarkDetail(landmark: modelData.landmarks[0])
          .environmentObject(modelData)
    }
}
