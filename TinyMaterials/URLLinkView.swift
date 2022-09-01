//
//  Test1View.swift
//  TinyMaterials
//
//  Created by 山本祐太 on 2022/08/28.
//

import SwiftUI

struct URLLinkView: View {
    var body: some View {
      if let url = URL(string: "https://twitter.com/home") {
        Link("Twitter", destination: url)
          .padding()
      }
      Link("Twitter本文埋め込み", destination: getNewTweetUrlWithTag())
        .padding()
    }
             
  func getNewTweetUrlWithTag() -> URL {
      //シェアするテキストを作成
      let text = "AppからTwitterでシェアする"
      let hashTag = "#ハッシュタグ"
      let completedText = text + "\n" + hashTag

      //作成したテキストをエンコード
      let encodedText = completedText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    
      //エンコードしたテキストをURLに繋げ、URLを開いてツイート画面を表示させる
      if let encodedText = encodedText {
        return URL(string: "https://twitter.com/intent/tweet?text=\(encodedText)")!
      }
    
    return URL(string: "https://twitter.com/")!
    }
}

struct URLLinkView_Previews: PreviewProvider {
    static var previews: some View {
      URLLinkView()
    }
}
