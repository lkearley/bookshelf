//
//  ContentView.swift
//  bookshelf
//
//  Created by Lauren Kearley on 7/14/20.
//  Copyright © 2020 ltk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingScanner = false
    var books : [Book] = []
    
    var body: some View {
        NavigationView {
            List(books) { book in
                BookCell(book: book)
                    .padding(15.0)
            }.padding(.vertical, 10.0)
            .navigationBarTitle(Text("My Books")).navigationBarItems(
                trailing: ScanNewButton()
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(books: testData)
    }
}

struct ScanNewButton: View {
    var body: some View {
        return Button(action: {}, label: {Image(systemName: "plus")})
    }
}

struct BookCell: View {
    let book: Book
    var body: some View {
        return HStack { Image(uiImage: #imageLiteral(resourceName: "book")).resizable()
            .frame(width: 30.0, height: 30.0).scaledToFit()
        VStack(alignment: .leading) {
            Text(book.volumeInfo?.title ?? "")
            Text(book.volumeInfo?.author ?? "").font(.subheadline)
        }
        .padding(.leading, 20.0)
            
        }
    }
}
