// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2018  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
/**
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

@objc public class Client: RequestBuilderData {
	public var configuration: ConnectionConfiguration
	
	@objc public init(_ config: ConnectionConfiguration) {
		configuration = config
		
		super.init()
		
		clientTag = "swift:18-06-09"
		apiVersion = "3.3.0"
	}
}

public class ClientTokenizer: BaseTokenizedObject {
	
	public var clientTag: BaseTokenizedObject {
		get {
			return self.append("clientTag")
		}
	}
	
	public var apiVersion: BaseTokenizedObject {
		get {
			return self.append("apiVersion")
		}
	}
	
	/**
	 * Impersonated partner id
	 */
	public var partnerId: BaseTokenizedObject {
		get {
			return self.append("partnerId")
		}
	}
	
	/**
	 * Kaltura API session
	 */
	public var ks: BaseTokenizedObject {
		get {
			return self.append("ks")
		}
	}
	
	/**
	 * Kaltura API session
	 */
	public var sessionId: BaseTokenizedObject {
		get {
			return self.append("ks")
		}
	}
	
	/**
	 * Response profile - this attribute will be automatically unset after every API call.
	 */
	public var responseProfile: BaseTokenizedObject {
		get {
			return self.append("responseProfile")
		}
	}
}

extension RequestBuilderData{
	public var clientTag: String?{
		get{
			return params["clientTag"] as? String
		}
		set(value){
			setParam(key: "clientTag", value: value)
		}
	}
	
	public var apiVersion: String?{
		get{
			return params["apiVersion"] as? String
		}
		set(value){
			setParam(key: "apiVersion", value: value)
		}
	}
	
	/**
	 * Impersonated partner id
	 */
	public var partnerId: Int?{
		get{
			return params["partnerId"] as? Int
		}
		set(value){
			setParam(key: "partnerId", value: value)
		}
	}
	
	/**
	 * Kaltura API session
	 */
	public var ks: String?{
		get{
			return params["ks"] as? String
		}
		set(value){
			setParam(key: "ks", value: value)
		}
	}
	
	/**
	 * Kaltura API session
	 */
	public var sessionId: String?{
		get{
			return params["ks"] as? String
		}
		set(value){
			setParam(key: "ks", value: value)
		}
	}
	
	/**
	 * Response profile - this attribute will be automatically unset after every API call.
	 */
	public var responseProfile: BaseResponseProfile?{
		get{
			return params["responseProfile"] as? BaseResponseProfile
		}
		set(value){
			setParam(key: "responseProfile", value: value)
		}
	}
	
	public func applyParams(_ requestBuilder: RequestBuilderData) {
		if requestBuilder.clientTag == nil {
			requestBuilder.clientTag = clientTag
		}
		if requestBuilder.apiVersion == nil {
			requestBuilder.apiVersion = apiVersion
		}
		if requestBuilder.partnerId == nil {
			requestBuilder.partnerId = partnerId
		}
		if requestBuilder.ks == nil {
			requestBuilder.ks = ks
		}
	}
}
