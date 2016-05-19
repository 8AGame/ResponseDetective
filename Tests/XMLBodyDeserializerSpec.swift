//
// XMLBodyDeserializerSpec.swift
//
// Copyright (c) 2016 Netguru Sp. z o.o. All rights reserved.
// Licensed under the MIT License.
//

import Foundation
import Nimble
import ResponseDetective
import Quick

internal final class XMLBodyDeserializerSpec: QuickSpec {

	override func spec() {

		describe("XMLBodyDeserializer") {

			let sut = XMLBodyDeserializer()

			it("should correctly deserialize XML data") {
				let source = "<foo bar=\"baz\"><qux></qux></foo>"
				let data = (source as NSString).dataUsingEncoding(NSUTF8StringEncoding)!
				let expected = "<?xml version=\"1.0\"?>\n<foo bar=\"baz\">\n  <qux/>\n</foo>"
				expect { sut.deserializeBody(data) }.to(equal(expected))
			}

		}

	}
	
}
