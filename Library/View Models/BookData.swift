//
//  BookData.swift
//  Library
//
//  Created by 정호윤 on 2022/05/10.
//

import Foundation
import SwiftUI

final class BookData: ObservableObject {
    @Published var books: [Book] = []
    
    init() {
        let path = Bundle.main.url(forResource: "Data", withExtension: "json")
        
        if let pathForUrl = path {
            do {
                let data = try Data(contentsOf: pathForUrl)
                let decoder = JSONDecoder()
                do {
                    let data = try decoder.decode([Book].self, from: data)
                    books = data
                } catch {
                    print(error)
                }
            } catch {
                print(error)
            }
        }
    }
}
