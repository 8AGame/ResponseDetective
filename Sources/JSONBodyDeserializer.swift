//
// JSONBodyDeserializer.swift
//
// Copyright (c) 2016 Netguru Sp. z o.o. All rights reserved.
// Licensed under the MIT License.
//

import Foundation

/// Deserializes JSON bodies.
@objc(RDTJSONBodyDeserializer) public final class JSONBodyDeserializer: NSObject, BodyDeserializer {
	
	/// Deserializes JSON data into a pretty-printed string.
	public func deserializeBody(body: NSData) -> String? {
		do {
			let object = try NSJSONSerialization.JSONObjectWithData(body, options: [])
			let data = try NSJSONSerialization.dataWithJSONObject(object, options: [.PrettyPrinted])
			return NSString(data: data, encoding: NSUTF8StringEncoding) as String?
		} catch {
			return nil
		}
	}
	
}
