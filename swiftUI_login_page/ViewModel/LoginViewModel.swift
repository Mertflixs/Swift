//
//  LoginViewModel.swift
//  swiftUI_login_page
//
//  Created by Mert Alaşahan on 12.12.2022.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
}
