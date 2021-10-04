//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Wilson Gomes on 2021-10-01.
//

import SwiftUI

struct ProfileHost: View {
  @Environment(\.editMode) var editMode
  @EnvironmentObject var modelData: ModelData
  @State private var draftProfile = Profile.default
  
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      HStack {
        if editMode?.wrappedValue == .active {
            Button("Cancel") {
                draftProfile = modelData.profile
                editMode?.animation().wrappedValue = .inactive
            }
        }
        Spacer()
        EditButton()
      }
      
      if editMode?.wrappedValue == .inactive {
        ProfileSummary(profile: modelData.profile)
      } else {
        ProfileEditor(profile: $draftProfile)
      }
    }
    .padding()
  }
}

struct ProfileHost_Previews: PreviewProvider {
  static var previews: some View {
      ProfileHost()
      .environmentObject(ModelData())
  }
}
