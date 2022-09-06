//
//  UserLocationMapView.swift
//  TinyMaterials
//
//  Created by 山本祐太 on 2022/09/06.
//

import SwiftUI

struct UserLocationMapView: View {
  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
      .navigationBarTitleDisplayMode(.inline)
      .navigationTitle(Text("マップ表示"))
  }
}

struct UserLocationMapView_Previews: PreviewProvider {
  static var previews: some View {
    UserLocationMapView()
      .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
  }
}
