//
//  ActionSheetDispView.swift
//  TinyMaterials
//
//  Created by 山本祐太 on 2022/08/28.
//

import SwiftUI

struct ActionSheetDispView: View {
  @State private var showingActionSheet = false
    
  var body: some View {
    Button("アクションシート表示") {
      self.showingActionSheet = true
    }
    .actionSheet(isPresented: $showingActionSheet) {
      ActionSheet(
        title: Text("タイトル"),
        message: Text("メッセージ"),
        buttons:[
          .default(Text("実行とか")) {
            print("実行とか")
          },
          .destructive(Text("削除とか")) {
            print("削除とか")
          },
          .cancel(Text("キャンセルとか")) {
            print("キャンセルとか")
          },
        ]
      )
    }
  }
}

struct ActionSheetDispView_Previews: PreviewProvider {
    static var previews: some View {
      ActionSheetDispView()
    }
}
