//
//  Test1View.swift
//  TinyMaterials
//
//  Created by 山本祐太 on 2022/08/28.
//

import SwiftUI

struct UserDefaultsView: View {
  private let defaultsKey = "sampleUD"
  
  @AppStorage(wrappedValue: "", "sampleUD") private var userDefaults: String
  @State private var userDefaults2: String = ""
  
  var body: some View {
    VStack {
      Text("sampleUD：" + userDefaults)
        .padding()
      TextField("トークン", text: $userDefaults)
        .autocapitalization(.none)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 300)
        .padding()
      Button("取得") {
        userDefaults2 = retrieveUserDefaults()
      }
        .padding()
      Text("userDefaults2：" + userDefaults2)
        .padding()
      Button("登録") {
        registerUserDefaults(value: userDefaults)
      }
        .padding()
      Button("削除") {
        removeUserDefaults()
      }
        .padding()
    }
    .navigationBarTitleDisplayMode(.inline)
    .navigationTitle(Text("UserDefaults"))
  }
  
  func retrieveUserDefaults() -> String {
    guard let sampleUD = UserDefaults.standard.string(forKey: defaultsKey) else { return "" }
    return sampleUD
  }
  
  func registerUserDefaults(value: String) {
    UserDefaults.standard.set(value, forKey: defaultsKey)
  }
  
  func removeUserDefaults() {
    UserDefaults.standard.removeObject(forKey: defaultsKey)
  }
}

struct UserDefaultsView_Previews: PreviewProvider {
    static var previews: some View {
      UserDefaultsView()
    }
}
