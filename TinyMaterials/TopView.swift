//
//  TopView.swift
//  TinyMaterials
//
//  Created by 山本祐太 on 2022/08/27.

import SwiftUI

struct TopView: View {
  var body: some View {
    VStack {
      NavigationView {
        List (samples) { sample in
          self.containedView(sample: sample)
        }
        .edgesIgnoringSafeArea([.bottom])
        .listStyle(PlainListStyle())
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("小ネタ集") 
      }
    }
  }

  func containedView(sample: Sample) -> AnyView {
    switch sample.view {
      case .alert:
        return AnyView(NavigationLink (destination: AlertDispView()) {
          Text(sample.title)
        })
      case .actionSheet:
        return AnyView(NavigationLink (destination: ActionSheetDispView()) {
          Text(sample.title)
        })
      case .urlLink:
        return AnyView(NavigationLink (destination: URLLinkView()) {
          Text(sample.title)
        })
      case .userDefaults:
        return AnyView(NavigationLink (destination: UserDefaultsView()) {
          Text(sample.title)
        })
    }
  }
}

struct TopView_Previews: PreviewProvider {
  static var previews: some View {
    TopView()
      .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
  }
}
