//
//  ContactListCell.swift
//  contactsApp
//
//  Created by whatever on 11/07/19.
//  Copyright © 2019 whatever. All rights reserved.
//

import UIKit

class ContactListCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .yellow
       setUpViews()
    }
    
    let contactNameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "name"
        return label
    }()
    
    let contactImage: UIImageView   =   {
       let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 40
        iv.clipsToBounds = true
        iv.image = UIImage(named: "contactuser")
        return iv
    }()
    
    func setUpViews()   {
        self.addSubview(contactNameLabel)
        self.addSubview(contactImage)
        
        [
        contactImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
        contactImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
        contactImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        contactImage.widthAnchor.constraint(equalToConstant: 80)
        ].forEach{ $0.isActive = true }
        
        
        [
            contactNameLabel.leftAnchor.constraint(equalTo: contactImage.rightAnchor, constant: 10),
            contactNameLabel.topAnchor.constraint(equalTo: contactImage.topAnchor),
            contactNameLabel.bottomAnchor.constraint(equalTo: contactImage.bottomAnchor),
            contactNameLabel.widthAnchor.constraint(equalToConstant: 80)
        ].forEach{ $0.isActive = true }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
