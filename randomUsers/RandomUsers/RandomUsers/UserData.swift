//
//  UserData.swift
//  RandomUsers
//
//  Created by Ladan Johari on 8/7/24.
//

import Foundation

@MainActor
class UserData: ObservableObject {
    @Published var users: String = ""
    init() {
        Task {
          do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users
          }
          catch {
            print(error)
          }
        }
      }
}
