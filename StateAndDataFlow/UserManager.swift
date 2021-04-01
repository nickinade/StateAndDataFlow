//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import SwiftUI

class UserManager: ObservableObject {
    @AppStorage("isRegistered") var isRegistered: Bool = false {
       willSet {
            self.objectWillChange.send()
       }
    }
    
    @AppStorage("username") var username: String = ""
}
