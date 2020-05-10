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
    var pdfView: PDFViewUI!
    var dismiss: () -> Void
    

    var body: some View {
        VStack {
            pdfView

            Button("Done", action: dismiss)
        }
    }
}

// This struct will return pdfView in UIView form to make it SwiftUI compatible
struct PDFViewUI : UIViewRepresentable {
    let pdfView = PDFView()
    var url: URL?
    init(url : URL) {
        self.url = url
    }

    func makeUIView(context: Context) -> UIView {
        if let url = url {
            pdfView.document = PDFDocument(url: url)
        }

        return pdfView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // Empty
    }

}
