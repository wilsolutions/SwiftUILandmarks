//
//  CircleImage.swift
//  Landmarks
//
//  Created by Wilson Gomes on 2021-09-24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.white, lineWidth: 4))
          .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
