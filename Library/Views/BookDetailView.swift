//
//  BookDetailView.swift
//  Library
//
//  Created by 정호윤 on 2022/05/10.
//

import SwiftUI

struct BookDetailView: View {
    var content: [String]
    
    var body: some View {
        TabView {
            ForEach(0..<content.count, id: \.self) { index in
                VStack {
                    Text(content[index])
                        .padding()
                    
                    Text("-\(index + 1)-")
                }
            }
        }
        .tabViewStyle(.page)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(content: ["for", "test"])
            .environmentObject(BookData())
    }
}
