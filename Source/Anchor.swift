//
//  Anchor.swift
//  SAEasyAnchor
//
//  Created by Алексей Семенов on 10.07.2020.
//

import UIKit


public extension UIView {
    
    //MARK: - Use to set constraints for your view, insets from other view and size of your view
    func anchor(top: NSLayoutYAxisAnchor?, bottom: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let leading = leading {
            self.leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        
        if let trailing = trailing {
            self.trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if size.width != 0 {
            self.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            self.heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
    }
    
    
    //MARK: - Use to clip edges of your view to any other view. (for example to imageView in collectionViewCell)
    
    func anchorEdgesToView(view: UIView?) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let viewTopAnchor = view?.topAnchor {
            
            topAnchor.constraint(equalTo: viewTopAnchor).isActive = true
        }
        
        if let viewBottomAnchor = view?.bottomAnchor {
            
            bottomAnchor.constraint(equalTo: viewBottomAnchor).isActive = true
        }
        
        if let viewLeadingAnchor = view?.leadingAnchor {
            
            leadingAnchor.constraint(equalTo: viewLeadingAnchor).isActive = true
        }
        
        if let viewTrailingAnchor = view?.trailingAnchor {
            
            trailingAnchor.constraint(equalTo: viewTrailingAnchor).isActive = true
        }
    }
    
    
    //MARK: - Use to set your view to center of another view
    
    func anchorToCenter(view: UIView?, size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let view = view {
            
            centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            
            centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            
            
            if size.width != 0 {
                self.widthAnchor.constraint(equalToConstant: size.width).isActive = true
            }
            
            if size.height != 0 {
                self.heightAnchor.constraint(equalToConstant: size.height).isActive = true
            }
            
            
        }
        
    }
    
    //MARK: - Use to clip edges of your view to superView.
    
    
    func anchorEdgesToSuperView(padding: UIEdgeInsets = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let topAncorOfSuperView = superview?.topAnchor {
            topAnchor.constraint(equalTo: topAncorOfSuperView, constant: padding.top).isActive = true
        }
        
        if let bottomAnchorOfSuperView = superview?.bottomAnchor {
            bottomAnchor.constraint(equalTo: bottomAnchorOfSuperView, constant: -padding.bottom).isActive = true
        }
        
        if let leadingAnchorOfSuperView = superview?.leadingAnchor {
            leadingAnchor.constraint(equalTo: leadingAnchorOfSuperView, constant: padding.left).isActive = true
        }
        
        if let trailingAnchorOfSuperView = superview?.trailingAnchor {
            trailingAnchor.constraint(equalTo: trailingAnchorOfSuperView, constant: -padding.right).isActive = true
        }
    }
    
    
}
