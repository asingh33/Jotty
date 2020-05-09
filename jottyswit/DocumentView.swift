//
//  DocumentView.swift
//  jottyswit
//
//  Created by ABHISHEK SINGH on 09/05/20.
//  Copyright © 2020 Abhishek Singh. All rights reserved.
//

import SwiftUI
import PDFKit

struct DocumentView: View {
    var document: UIDocument
    var dismiss: () -> Void
    var pdfView: PDFKitView!

    var body: some View {
        VStack {
            pdfView

            Button("Done", action: dismiss)
        }
    }
}

// This struct will return pdfView in UIView form to make it SwiftUI compatible
struct PDFKitView : UIViewRepresentable {

    var url: URL?
    init(url : URL) {
        self.url = url
    }

    func makeUIView(context: Context) -> UIView {
        let pdfView = PDFView()

        if let url = url {
            pdfView.document = PDFDocument(url: url)
        }

        return pdfView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // Empty
    }

}
