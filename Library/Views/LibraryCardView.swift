//
//  LibraryCardView.swift
//  Library
//
//  Created by 정호윤 on 2022/05/10.
//

import SwiftUI

struct LibraryCardView: View {
    var book: Book
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(width: 350, height: 600)
                .shadow(radius: 10, x: 5, y: 5)
            VStack {
                HStack {
                    Text(book.title)
                        .bold()
                        .font(.title)
                        .padding(.bottom, 5)
                    
                    Image(systemName: book.isFavourite ? "star.fill" : "")
                        .foregroundColor(.yellow)
                }
                Text(book.author)
                Image(book.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 450)

            }
        }
        .padding()
        .navigationTitle("My Library")
    }
}

struct LibraryCardView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryCardView(book: BookData().books[0])
            .environmentObject(BookData())
    }
}
