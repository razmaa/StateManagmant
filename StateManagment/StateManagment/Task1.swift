
import SwiftUI

struct CounterView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
            Button("+1") {
                count += 1
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}


