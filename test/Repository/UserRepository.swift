//
//  UserRepository.swift
//  test
//
//  Created by AGO on 14/10/2021.
//  Copyright © 2021 AGO. All rights reserved.
//

import Foundation




protocol UserRepositoryProtocal {
    func fetchUser(completion: (User) -> Void )
}



final class UserRepository: UserRepositoryProtocal{
    // fetch from API service
    private let apiService : UserApiServiceProtocal
    
    
    init(apiService: UserApiServiceProtocal = UserApiService() ) {
        self.apiService = apiService
    }
    func fetchUser(completion: (User) -> Void) {
        apiService.fetchUser(completion:  completion )
    }
    
    
}
