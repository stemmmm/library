//
//  LibraryApp.swift
//  Library
//
//  Created by 정호윤 on 2022/05/10.
//

import SwiftUI

@main
struct LibraryApp: App {
    @StateObject var bookData = BookData()
    
    var body: some Scene {
        WindowGroup {
            LibraryView()
                .environmentObject(bookData)
        }
    }
}
