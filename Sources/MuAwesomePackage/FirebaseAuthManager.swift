import Firebase

public class FirebaseAuthManager {
    
    public func signIn(with email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error
            in
            
            NetworkManger.SendWelcomeEmail(to: result?.user.email)
        }
        
    }
    
}
