import SwiftUI

struct Sample: Identifiable {
    var id: Int
    var title: String
    var view: ViewEnum
}

enum ViewEnum {
    case alert
    case actionSheet
    case urlLink
    case userDefaults
}

let samples: [Sample] = [
    Sample(id: 1, title: "Alert", view: .alert),
    Sample(id: 2, title: "ActionSheet", view: .actionSheet),
    Sample(id: 3, title: "URLLink", view: .urlLink),
    Sample(id: 4, title: "UserDefaults", view: .userDefaults)
]
