//
//  UserFetchingClient.swift
//  RandomUsers
//
//  Created by Ladan Johari on 8/7/24.
//

import Foundation

struct UserFetchingClient {
    static private let url = URL(string: "https://randomuser.me/api/?results=10&format=pretty")!
    static func getUsers() async throws -> String {
        async let (data, _) = URLSession.shared.data(from: url)
        return try await String(data: data, encoding: .utf8)!
    }

}
