//
//  LibraryView.swift
//  Library
//
//  Created by 정호윤 on 2022/05/10.
//

import SwiftUI

struct LibraryView: View {
    @EnvironmentObject var bookData: BookData
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(bookData.books) { book in
                        NavigationLink {
                            BookView(book: book)
                        } label: {
                            LibraryCardView(book: book)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .environmentObject(BookData())
    }
}
