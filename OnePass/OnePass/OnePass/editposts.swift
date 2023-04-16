////
////  ContentView.swift
////  OnePass
////
////  Created by Dax Patel on 4/15/23.
////
//
//import SwiftUI
//
//struct EditPosts: View {
//
//    @State var textFieldString: String = ""
//    var textFieldnavigationView: String = "edit your posts"
//    @State var dataArray: [String] = []
//
//    var body: some View {
//        NavigationStack {
//            VStack {
//                //vstack or vertical stack
//                //we use it like a div in html bascilly
//                TextField("type something here", text: $textFieldString)
//                    //.textFieldStyle(RoundedBorderTextFieldStyle()) this is on way to style itemes in Swift
//                    //we can also add direct styles to it lie this:
//                    .padding()
//                    .background(Color.gray.opacity(0.3).cornerRadius(10))
//                    .foregroundColor(.red)
//                    .font(.headline)
//
//                Button(action: {
//                    saveData()
//                }, label: {
//                    Text("Save Text".uppercased())
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .background(Color.blue.opacity(0.3).cornerRadius(10))
//                        .foregroundColor(.red)
//                        .font(.headline)
//                })
//
//                ForEach(dataArray, id: \.self) {data in
//                    Text(data)
//                }
//
//                Spacer()
//
//            }
//            .padding()
//            .navigationTitle(textFieldnavigationView)
//        }
//    }
//
//
//    func saveData() {
//        //can use this function to post straight to FIREBASE db
//        //append the text to a local array for now
//        dataArray.append(textFieldString)
//        textFieldString = ""
//    }
//
//}
//
//struct AllPosts: View {
//    var body: some View{
//        Text("hello from all posts")
//
//        Button(action: {
//            //onclick go to edit your posts content screen
//
//        }, label: {
//            Text("Save Text".uppercased())
//                .padding()
//                .frame(maxWidth: .infinity)
//                .background(Color.blue.opacity(0.3).cornerRadius(10))
//                .foregroundColor(.red)
//                .font(.headline)
//        })
//    }
//
//    func GetAllPosts() {
//        //function to pull all the posts from the database
//    }
//}
//
//struct EditPosts_Previews: PreviewProvider {
//    static var previews: some View {
//        EditPosts()
//        AllPosts()
//    }
//}
