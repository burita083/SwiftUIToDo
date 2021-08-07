//
//  ToDoListView.swift
//  SwiftUIToDo
//
//  Created by burita083 on 2021/08/07.
//

import SwiftUI

struct ToDoListView: View {
    @ObservedObject private var todoListViewModel = ToDoListViewModel()
    
    @State private var isShown = false
    var body: some View {
        NavigationView {
            ZStack {
                List(todoListViewModel.items, id: \.self) { item in
                    Text(item)
                }
                .navigationBarTitle("ToDoList", displayMode: .inline)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            //self.items.append(Item(value: "Item"))
                            isShown.toggle()
                        }, label: {
                            Text("+")
                                .font(.system(.largeTitle))
                                .frame(width: 77, height: 70)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 7)
                        })
                        .background(Color.blue)
                        .cornerRadius(38.5)
                        .padding()
                        .shadow(color: Color.black.opacity(0.3),
                                radius: 3,
                                x: 3,
                                y: 3)
                    }
                }
                
            }
            
            .sheet(isPresented: $isShown) {
                SheetView()
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ToDoListView()
        }
    }
}

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button("Press to dismiss") {
            presentationMode.wrappedValue.dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}
