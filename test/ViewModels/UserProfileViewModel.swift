//
//  UserProfileViewModel.swift
//  test
//
//  Created by AGO on 14/10/2021.
//  Copyright © 2021 AGO. All rights reserved.
//

import Foundation


final class UserProflieViewModel: ObservableObject{
     @Published var username = ""
    
    private let repository: UserRepositoryProtocal
    
    init(repository: UserRepositoryProtocal = UserRepository()) {
        self.repository = repository
    }
    
    func onAppear() {
        repository.fetchUser{
            user in
            self.username = user.username
        }
    }
}
