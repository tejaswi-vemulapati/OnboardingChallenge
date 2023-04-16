//
//  EditPostView.swift
//  OnePass
//
//  Created by Dax Patel on 4/15/23.
//

import SwiftUI

struct EditPostView: View {
    
    @State var textFieldString: String = ""
    var textFieldnavigationView: String = "edit your posts"
    @State var dataArray: [String] = []

    var body: some View {
        NavigationStack {
            VStack {
                TextField("type something here", text: $textFieldString)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)

                Button(action: {
                    saveData()
                }, label: {
                    Text("Save Text".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.3).cornerRadius(10))
                        .foregroundColor(.red)
                        .font(.headline)
                })

                ForEach(dataArray, id: \.self) {data in
                    Text("Text updated to: "+data)
                }

                Spacer()

            }
            .padding()
            .navigationTitle(textFieldnavigationView)
        }
    }


    func saveData() {
        dataArray.append(textFieldString)
        textFieldString = ""
    }

}

struct EditPostView_Previews: PreviewProvider {
    static var previews: some View {
        EditPostView()
    }
}
