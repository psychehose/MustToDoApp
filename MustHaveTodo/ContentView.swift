//
//  ContentView.swift
//  MustHaveTodo
//
//  Created by 김호세 on 2022/04/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack() {
                Color.yellow.ignoresSafeArea()
                
                VStack() {
                    HStack {
                        Text("MustTodo")
                            .padding()
                            .font(.largeTitle)
                            .offset(x: 10)
                        Spacer()
                    }
                    Spacer()
                    
                    Image(systemName: "flame")
                        .resizable()
                        .padding(EdgeInsets(top: 50, leading: 50, bottom: 50, trailing: 50))
                        
                    Spacer()
                        
                    HStack (spacing: 150) {
                        Button(action: {print("OK")}) {
                            Text("OK")
                                .padding()
                                .font(.largeTitle)
                        }
                        Button(action: {print("NOT")}) {
                            Text("Not")
                                .padding()
                                .font(.largeTitle)
                        }

                    }
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("2022년 5월 4일")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { print("Navi")}) {
                        Text("MyPage")
                    }
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
