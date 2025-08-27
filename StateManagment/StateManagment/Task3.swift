
import SwiftUI

struct ParentView: View {
    @State private var isOn = false

    var body: some View {
        VStack(spacing: 20) {
            Text(isOn ? "Toggle is ON" : "Toggle is OFF")
            ChildToggleView(isOn: $isOn)
        }
        .padding()
    }
}

struct ChildToggleView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Control Toggle", isOn: $isOn)
            .toggleStyle(.switch)
    }
}

