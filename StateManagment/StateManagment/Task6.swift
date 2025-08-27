
import SwiftUI

struct SettingItem: Identifiable {
    let id = UUID()
    var name: String
    var isOn: Bool
}

struct SettingsListView: View {
    @State private var settings = [
        SettingItem(name: "Notifications", isOn: true),
        SettingItem(name: "Dark Mode", isOn: false),
        SettingItem(name: "Location Services", isOn: true)
    ]
    
    var body: some View {
        List($settings) { $item in
            Toggle(item.name, isOn: $item.isOn)
        }
    }
}

