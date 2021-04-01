//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        ZStack {
            // Добавил фон чтобы .onTapGesture срабатывал в любом месте экрана
            Color(.white)
                .ignoresSafeArea()
            VStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Button(action: registerUser) {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.username = name
            user.isRegistered.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
