//
//  ToDoListView.swift
//  SwiftUIToDo
//
//  Created by burita083 on 2021/08/07.
//

import SwiftUI

struct ToDoListView: View {
    @ObservedObject private var todoListViewModel = ToDoListViewModel()
    
    var body: some View {
        List(todoListViewModel.items, id: \.self) { item in
            Text(item)
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
