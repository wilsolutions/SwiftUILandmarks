//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Wilson Gomes on 2021-09-29.
//

import SwiftUI

struct FavoriteButton: View {
  @Binding var isSet: Bool
  
  
    var body: some View {
      Button(action: {
        isSet.toggle()
      }){
        Image(systemName: isSet ? "star.fill": "star")
          .foregroundColor(isSet ? Color.yellow : Color.gray)
      }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
      FavoriteButton(isSet: .constant(true))
    }
}
