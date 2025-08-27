
import SwiftUI
import Observation

@Observable
class UserProfile {
    var name: String = ""
    var email: String = ""
}

struct UserProfileView: View {
    @State private var profile = UserProfile()
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Name", text: $profile.name)
                .textFieldStyle(.roundedBorder)
            TextField("Email", text: $profile.email)
                .textFieldStyle(.roundedBorder)
            Text("Name: \(profile.name)")
            Text("Email: \(profile.email)")
        }
        .padding()
    }
}

