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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class StreamContainer: ObjectBase {

	public class StreamContainerTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var trackIndex: BaseTokenizedObject {
			get {
				return self.append("trackIndex") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var channelIndex: BaseTokenizedObject {
			get {
				return self.append("channelIndex") 
			}
		}
		
		public var label: BaseTokenizedObject {
			get {
				return self.append("label") 
			}
		}
		
		public var channelLayout: BaseTokenizedObject {
			get {
				return self.append("channelLayout") 
			}
		}
	}

	public var type: String? = nil
	public var trackIndex: Int? = nil
	public var language: String? = nil
	public var channelIndex: Int? = nil
	public var label: String? = nil
	public var channelLayout: String? = nil


	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(trackIndex: String) {
		self.dict["trackIndex"] = trackIndex
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(channelIndex: String) {
		self.dict["channelIndex"] = channelIndex
	}
	
	public func setMultiRequestToken(label: String) {
		self.dict["label"] = label
	}
	
	public func setMultiRequestToken(channelLayout: String) {
		self.dict["channelLayout"] = channelLayout
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["type"] != nil {
			type = dict["type"] as? String
		}
		if dict["trackIndex"] != nil {
			trackIndex = dict["trackIndex"] as? Int
		}
		if dict["language"] != nil {
			language = dict["language"] as? String
		}
		if dict["channelIndex"] != nil {
			channelIndex = dict["channelIndex"] as? Int
		}
		if dict["label"] != nil {
			label = dict["label"] as? String
		}
		if dict["channelLayout"] != nil {
			channelLayout = dict["channelLayout"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(type != nil) {
			dict["type"] = type!
		}
		if(trackIndex != nil) {
			dict["trackIndex"] = trackIndex!
		}
		if(language != nil) {
			dict["language"] = language!
		}
		if(channelIndex != nil) {
			dict["channelIndex"] = channelIndex!
		}
		if(label != nil) {
			dict["label"] = label!
		}
		if(channelLayout != nil) {
			dict["channelLayout"] = channelLayout!
		}
		return dict
	}
}

