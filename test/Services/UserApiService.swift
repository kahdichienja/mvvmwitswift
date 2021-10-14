//
//  UserApiService.swift
//  test
//
//  Created by AGO on 14/10/2021.
//  Copyright © 2021 AGO. All rights reserved.
//

import Foundation




protocol UserApiServiceProtocal {
    func fetchUser(completion: (User) -> Void )
}

final class UserApiService: UserApiServiceProtocal{
    func fetchUser(completion: (User) -> Void) {
        completion(.init(username: "James")) 
    }
}
