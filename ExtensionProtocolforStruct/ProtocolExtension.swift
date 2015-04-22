//
//  protocolExtension.swift
//  ExtensionProtocolforStruct
//
//  Created by Davide Mendolia on 21/04/15.
//  Copyright (c) 2015 Davide Mendolia. All rights reserved.
//

import Foundation
import submodule

protocol TestProtocol {

    var foo: String { get }

}

extension TestStruct : TestProtocol { }