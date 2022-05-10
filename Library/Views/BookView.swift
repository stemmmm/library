//
//  BookView.swift
//  Library
//
//  Created by 정호윤 on 2022/05/10.
//

import SwiftUI

struct BookView: View {
    var book: Book
    @EnvironmentObject var bookData: BookData
    
    var index: Int {
        bookData.books.firstIndex { modelBook in
            modelBook.id == book.id
        }!
    }
    
    var body: some View {
            VStack {
                Text("Read Now!")
                    .font(.title)
                    .padding(.top, 20)
                
                NavigationLink {
                    BookDetailView(content: bookData.books[index].content)
                } label: {
                    Image(book.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                        .padding(.top)
                }
                
                VStack {
                    Text("Mark for later!")
                        .bold()
                        .padding(.top)
                    
                    FavoriteButton(isSet: $bookData.books[index].isFavourite)
                        .font(.title)
                        .padding(.top, 4)
                }
                
                VStack {
                    Text("Rate Amazing Words")
                        .bold()
                        .padding(.top)
                    
                    Picker("Chose Rating", selection: $bookData.books[index].rating) {
                        Text("1").tag(1)
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }
                    .pickerStyle(.segmented)
                    .frame(width: 250)
                }
                
                Spacer()
            }
            .navigationTitle(book.title)
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(book: BookData().books[0])
            .environmentObject(BookData())
    }
}
