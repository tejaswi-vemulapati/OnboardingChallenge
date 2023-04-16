import SwiftUI
import Firebase

struct ContentView: View {
    @ObservedObject var model = PostFetchModel()
    @State var text = ""
    @State var updateText = ""
    
    var body: some View {
        
        VStack {
            
            List(model.list){ item in
                //id is the Document name, text is the item in side that spacific document
                HStack {
                    Text(item.text)
                    Spacer()
                    //update button and text field next to it
                    
                    //because of the loop the text field acts weired
                    //instead do another text entry and apply styles
                    //TextField("type the change here",text:$text)
                    
                    
                    //now it doesnt update the
                    Button (action: {
                        //do something
                        model.updateData(entryToUpdate: item, text:updateText)
                    }, label: {
                        Image(systemName:"pencil")
                    })
                    
                    //update all the items in the list again
                }
            }
            Divider()
            
            VStack(spacing: 5) {
                
                TextField("type what you want to add to the database",text:$text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    model.addData(text: text)
                    //clear the text field after adding
                    text = ""
                }, label: {
                    Text("Add to database")
                })
                
                TextField("Type updated text first than select the pencil next to the one you want to update",text:$updateText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                
            }
        }
    }
    
    
    init() {
        model.getData()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
