//
//  Test1View.swift
//  TinyMaterials
//
//  Created by 山本祐太 on 2022/08/28.
//

import SwiftUI

struct AlertDispView: View {
  @State private var showingAlert = false
  @State private var showingAlert2 = false
  var body: some View {
    VStack {
      Button(action: {
        self.showingAlert = true
      }) {
        Text("アラート表示")
          .font(
            .system(
              size: 18,
              weight: .heavy,
              design: .rounded
            )
          )
      }
      .alert(isPresented: $showingAlert) {
        Alert(
          title: Text("タイトル"),
          message: Text("詳細メッセージです")
        )
      }
      .padding()
      Button(action: {
        self.showingAlert2 = true
      }) {
        Text("アラート表示２")
          .font(
            .system(
              size: 18,
              weight: .heavy,
              design: .rounded
            )
          )
      }
      .alert(isPresented: $showingAlert2) {
          Alert(title: Text("タイトル"),
                message: Text("詳細メッセージです"),
                primaryButton: .destructive(Text("左ボタン")),
                secondaryButton: .default(
                  Text("右ボタン"),
                  action: {
                    print("tap rightside")
                  }
                )
          )
      }
    }
    .navigationBarTitleDisplayMode(.inline)
    .navigationTitle(Text("アラート表示"))
  }
}

struct AlertDispView_Previews: PreviewProvider {
    static var previews: some View {
        AlertDispView()
    }
}
