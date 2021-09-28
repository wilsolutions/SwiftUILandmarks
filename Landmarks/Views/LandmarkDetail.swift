//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Wilson Gomes on 2021-09-28.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
      VStack {
          MapView()
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
        
          CircleImage()
            .offset(y: -130)
            .padding(.bottom, -130)
        
        
        VStack(alignment: .leading) {
          Text("Turtle Rock")
            .font(.title)
          
          HStack {
            Text(/*@START_MENU_TOKEN@*/"Joshua tree national park"/*@END_MENU_TOKEN@*/)
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"California"/*@END_MENU_TOKEN@*/)
          }
          .font(.subheadline)
          .foregroundColor(.secondary)
          Divider()
          
          Text("About Turtle Rock")
            .font(.title2)
          Text("Descriptive text goes here")
        }
        .padding()
        
        Spacer()
      }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
