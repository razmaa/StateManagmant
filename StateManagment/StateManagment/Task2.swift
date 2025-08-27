
import SwiftUI

struct ToggleTextView: View {
    @State private var isOn = false

    var body: some View {
        VStack(spacing: 20) {
            Toggle("Show Text", isOn: $isOn)
                .toggleStyle(.switch)
            if isOn {
                Text("Hello, SwiftUI!")
            }
        }
        .padding()
    }
}

