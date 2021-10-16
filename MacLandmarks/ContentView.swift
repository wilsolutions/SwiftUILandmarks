//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Wilson Gomes on 2021-10-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      LandmarkList()
          .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(ModelData())
    }
}
