//
//  UserNotificationsView.swift
//  TinyMaterials
//
//  Created by 山本祐太 on 2022/09/04.
//

import SwiftUI
import UserNotifications

struct LocalNotesView: View {
  @State var buttonText = "5秒後にローカル通知を発行する"
  
  //①通知関係のメソッド作成
  func makeNotification(){
      let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
      
      let content = UNMutableNotificationContent()
      content.title = "ローカル通知"
      content.body = "ローカル通知を発行しました"
      content.sound = UNNotificationSound.default
      
      let request = UNNotificationRequest(identifier: "notification001", content: content, trigger: trigger)

    UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
  }
  
  var body: some View {
    VStack {
      Text("動作確認時は、ボタンを押して\nバックグラウンド状態にすること")
        .padding()
      Button(action: {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound]){ (granted, _) in
          if granted {
            makeNotification()
          }else {
            buttonText = "通知が拒否されているので発動できません"
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            buttonText = "5秒後にローカル通知を発行する"
            }
          }
        }
      }) {
        Text(buttonText)
      }
    }
  }
}

struct LocalNotesView_Previews: PreviewProvider {
  static var previews: some View {
    UserDefaultsView()
  }
}
