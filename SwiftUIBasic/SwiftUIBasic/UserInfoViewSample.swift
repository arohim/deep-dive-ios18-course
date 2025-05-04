//
//  UserInfoViewSample.swift
//  SwiftUIBasic
//
//  Created by Abdulrohim 'Him' Sama on 4/5/2568 BE.
//

import SwiftUI

struct User_Info_View: View {
    let name: String
    let email: String
    let phone: String
    let address: String
    
    var body: some View {
        GroupBox {
            VStack(alignment: .leading) {
                Text("Name: \(name)")
                Text("Email: \(email)")
                
                GroupBox {
                    VStack(alignment: .leading) {
                        Text("Phone: \(phone)")
                        Text("Address: \(address)")
                    }
//                    .padding(.horizontal)
                } label: {
                    Label("Contact Info", systemImage: "phone.circle")
                }
                .padding(.vertical)
            }
        } label: {
            Label("User Info", systemImage: "person.crop.circle")
        }
        .padding()
    }
}

struct UserInfoViewSample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
//    UserInfoViewSample()
    User_Info_View(name: "Name", email: "email@email.com", phone: "+661231231232", address: "123 kjsk;dfj  alksdjf k alskdj BKK")
}
