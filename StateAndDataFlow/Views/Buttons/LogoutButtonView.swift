//
//  LogoutButtonView.swift
//  StateAndDataFlow
//
//  Created by Nikita Benin on 01.04.2021.
//

import SwiftUI

struct LogoutButtonView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        ActionButtonView(
            title: "LogOut",
            backgroundColor: .blue,
            action: { user.isRegistered = false }
        )
    }
}

struct LogoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButtonView()
    }
}
