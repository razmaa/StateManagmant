
import SwiftUI
import Observation

@Observable
class FormModel {
    var username: String = ""
}

struct SimpleFormView: View {
    @State private var form = FormModel()
    @State private var submittedUsername: String?

    var body: some View {
        VStack(spacing: 20) {
            TextField("Username", text: $form.username)
                .textFieldStyle(.roundedBorder)
            Button("Submit") {
                submittedUsername = form.username
                form.username = ""
            }
            .disabled(form.username.isEmpty)
            .buttonStyle(.borderedProminent)
            
            if let name = submittedUsername {
                Text("Submitted: \(name)")
            }
        }
        .padding()
    }
}

