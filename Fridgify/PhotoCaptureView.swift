//
//  PhotoCaptureView.swift
//  Fridgify
//
//  Created by Arnav Patidar on 10/22/22.
//

import SwiftUI

struct PhotoCaptureView: View {
    
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

#if DEBUG
struct PhotoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCaptureView(showImagePicker: .constant(false), image: .constant(Image("")))
    }
}
#endif
