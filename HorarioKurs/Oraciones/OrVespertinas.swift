//
//  OrMatutinas.swift
//  HorarioKurs
//
//  Created by Jorge Luis Gomez on 03/04/2024.
//

import SwiftUI

struct OrVespertinas: View {
    // Define a variable to store the content of the RTF file
    @State private var rtfContent: NSAttributedString = NSAttributedString(string: "")
    
    var body: some View {
        VStack {
            // Display the RTF content
            TextView(attributedText: $rtfContent)
                .padding()
        }
        .onAppear {
            // Call a function to read content from the RTF file when the view appears
            readRTFContentFromFile()
        }
    }
    
    // Function to read RTF content from a file
    func readRTFContentFromFile() {
        // Get the URL of the RTF file from the app bundle
        if let rtfURL = Bundle.main.url(forResource: "orMatutinas", withExtension: "rtf") {
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
        return UITextView()
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = attributedText
    }
}

struct OrVespertinas_Previews: PreviewProvider {
    static var previews: some View {
        OrMatutinas()
    }
}

