//
//  UserProfileView.swift
//  test
//
//  Created by AGO on 14/10/2021.
//  Copyright © 2021 AGO. All rights reserved.
//

import SwiftUI

struct UserProfileView: View {
    
    @State private var viewmodel =  UserProflieViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("Name: \(viewmodel.username)")
                Spacer()
                
            }
        }
        .padding()
        .onAppear{
            self.viewmodel.onAppear()
        }
        .navigationBarTitle("User Profile")
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
