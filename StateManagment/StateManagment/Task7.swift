
import SwiftUI
import Observation

@Observable
class SharedCounter {
    var value: Int = 0
}

struct CounterViewA: View {
    @Bindable var counter: SharedCounter

    var body: some View {
        VStack(spacing: 20) {
            Text("View A: \(counter.value)")
                .font(.title)
            Button("+1") {
                counter.value += 1
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct CounterViewB: View {
    @Bindable var counter: SharedCounter

    var body: some View {
        VStack(spacing: 20) {
            Text("View B: \(counter.value)")
                .font(.title)
            Button("+1") {
                counter.value += 1
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct SharedCounterParentView: View {
    @State private var counter = SharedCounter()

    var body: some View {
        VStack(spacing: 40) {
            CounterViewA(counter: counter)
            CounterViewB(counter: counter)
        }
        .padding()
    }
}

