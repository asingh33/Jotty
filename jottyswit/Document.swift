//
//  Document.swift
//  jottyswit
//
//  Created by ABHISHEK SINGH on 09/05/20.
//  Copyright © 2020 Abhishek Singh. All rights reserved.
//

import UIKit
import PDFKit

class Document: UIDocument {
    
    var pdfDoc : PDFDocument!
    
    override func contents(forType typeName: String) throws -> Any {
        // Encode your document with an instance of NSData or NSFileWrapper
        return Data()
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        // Load your document from contents
        print(self.fileURL)
        self.pdfDoc = PDFDocument(url: self.fileURL)
        
    }
}

class PDFDocView {
    var pdfView : PDFView!
    
    //private let pdfDrawer = PageDrawer()
    //private let pdfDrawingGestureRecognizer = DrawingGestureRecognizer()
    
    //init(width: CGFloat, height: CGFloat)
    init(){
        
        self.pdfView = PDFView()
        self.pdfView.backgroundColor = UIColor.systemGray2
        self.pdfView.translatesAutoresizingMaskIntoConstraints = false
        self.pdfView.autoScales = true
        
//        self.pdfView.addGestureRecognizer(pdfDrawingGestureRecognizer)
//        pdfDrawingGestureRecognizer.drawingDelegate = pdfDrawer
//        pdfDrawingGestureRecognizer.isEnabled = true
//        pdfDrawingGestureRecognizer.cancelsTouchesInView = false
//        self.pdfView.isUserInteractionEnabled = true
//        pdfDrawer.pdfView = self.pdfView
//
    }
    
    func changeDrawMode(){
        //pdfDrawingGestureRecognizer.toggleDraw = !pdfDrawingGestureRecognizer.toggleDraw
    }
    
        
}
