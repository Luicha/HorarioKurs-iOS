//
//  OrMatutinas.swift
//  HorarioKurs
//
//  Created by Jorge Luis Gomez on 03/04/2024.
//

import SwiftUI

struct OrMatutinas: View {
    // Define a variable to store the content of the RTF file
    @State private var rtfContent: NSAttributedString = NSAttributedString(string: "")
    
    // Filename for the RTF file
    let filename: String
    
    var body: some View {
        VStack {
            // Display the RTF content
            TextView(attributedText: $rtfContent)
                .padding(.horizontal)
        }
        .onAppear {
            // Call a function to read content from the RTF file when the view appears
            readRTFContentFromFile()
        }
    }
    
    // Function to read RTF content from a file
    func readRTFContentFromFile() {
        // Get the URL of the RTF file from the app bundle
        if let rtfURL = Bundle.main.url(forResource: filename, withExtension: "rtf") {
            do {
                // Read the contents of the RTF file into an attributed string
                let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
                    .documentType: NSAttributedString.DocumentType.rtf
                ]
                let rtfData = try Data(contentsOf: rtfURL)
                let attributedString = try NSAttributedString(data: rtfData, options: options, documentAttributes: nil)
                
                // Update the state variable to display the RTF content
                self.rtfContent = attributedString
            } catch {
                print("Error reading RTF content from file: \(error)")
            }
        } else {
            print("RTF file not found")
        }
    }
}

struct TextView: UIViewRepresentable {
    @Binding var attributedText: NSAttributedString
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
            textView.isEditable = false // Make the text view non-editable
            textView.isSelectable = true // Allow text selection
            textView.isUserInteractionEnabled = true // Enable user interaction
            return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = attributedText
        uiView.textColor = UIColor(named: "Color") // Use a named color
    }
}


struct OrMatutinas_Previews: PreviewProvider {
    static var previews: some View {
        OrMatutinas(filename: "orMatutinas")
    }
}

