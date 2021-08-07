//
//  ToDoListViewModel.swift
//  SwiftUIToDo
//
//  Created by burita083 on 2021/08/07.
//

import Foundation

final class ToDoListViewModel: ObservableObject {
    @Published var items = ["SwiftUI", "AtCoder"]
}
