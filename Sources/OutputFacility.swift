//
// OutputFacility.swift
//
// Copyright (c) 2016 Netguru Sp. z o.o. All rights reserved.
// Licensed under the MIT License.
//

import Foundation

/// Represents an output facility which is capable of displaying requests,
/// responses and errors.
@objc(RFVOutputFacility) public protocol OutputFacility {
	
	/// Outputs a request representation.
	///
	/// - Parameters:
	///     - request: The request representation to output.
	func outputRequestRepresentation(request: RequestRepresentation)
	
	/// Outputs a response representation.
	///
	/// - Parameters:
	///     - response: The response representation to output.
	func outputResponseRepresentation(response: ResponseRepresentation)
	
	/// Outputs an error representation.
	///
	/// - Parameters:
	///     - error: The error representation to output.
	func outputErrorRepresentation(error: ErrorRepresentation)
	
}
