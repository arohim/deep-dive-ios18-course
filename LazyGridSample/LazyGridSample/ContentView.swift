//
//  ContentView.swift
//  LazyGridSample
//
//  Created by Abdulrohim 'Him' Sama on 15/6/2568 BE.
//

import SwiftUI

struct ContentView: View {

  let columns = [GridItem(.flexible()), GridItem(.flexible())]

  var body: some View {
    //    NewScrollViewFeaturesDemo()
    ScrollView {
      LazyVGrid(columns: columns) {
        ForEach(0...15, id: \.self) { index in
          Color.red
            .frame(width: 100.0, height: 100.0)

          if #available(iOS 18.0, *) {
            Color.yellow
              .frame(width: 100.0, height: 100.0)
              .onScrollVisibilityChange(threshold: 0.2) { isVisible in
                //              guard let index = items.firstIndex(where: { $0.id == item.id }) else { return }
                guard isVisible else { return }
                if index == 15 {
                  print("Load more triggered")
                }
              }
          } else {
            Color.yellow
              .frame(width: 100.0, height: 100.0)
          }
        }
      }
    }
    .padding()
  }
}

private struct ScrollViewItem: Identifiable {
  var id = UUID()
  var row: Int
}

struct NewScrollViewFeaturesDemo: View {
  @State private var items = (0...30).map { ScrollViewItem(row: $0) }
  @State private var position: ScrollPosition = .init(idType: ScrollViewItem.ID.self)

  var body: some View {
    ScrollView {
      LazyVStack(spacing: 20) {
        ForEach(items) { item in
          Text("Item: \(item.row)")
            .font(.system(size: 24, weight: .bold))
            .foregroundStyle(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background(RoundedRectangle(cornerRadius: 16).fill(.black))
            // to check if we are at bottom
            .onScrollVisibilityChange(threshold: 0.2) { isVisible in
              guard let index = items.firstIndex(where: { $0.id == item.id }) else { return }
              guard isVisible else { return }
              if index == items.count - 1 {
                guard let previousLastItem = items.last else { return }
                let newItemsList = (previousLastItem.row..<previousLastItem.row + 30).map { ScrollViewItem(row: $0) }
                items.append(contentsOf: newItemsList)

              }
            }
        }
      }
      .scrollTargetLayout()
    }
    .scrollPosition($position)
    .onAppear {
      position.scrollTo(id: items[15].id)
    }
    // to check if we are at top
    //    .onScrollGeometryChange(for: Bool.self) { geometry in
    //      geometry.contentOffset.y < geometry.contentInsets.top
    //    } action: { wasScrolledToTop, isScrolledToTop in
    //      if isScrolledToTop {
    //        guard let previousFirstItem = items.first else { return }
    //        let newItemsList = (previousFirstItem.row - 30..<previousFirstItem.row).map { ScrollViewItem(row: $0) }
    //        items.insert(contentsOf: newItemsList, at: 0)
    //        position.scrollTo(id: items[35].id)
    //      }
    //    }
    .padding()
    .backgroundStyle(.gray.opacity(0.2))
    .frame(maxWidth: .infinity, maxHeight: .infinity)

  }
}

#Preview {
  ContentView()
}
