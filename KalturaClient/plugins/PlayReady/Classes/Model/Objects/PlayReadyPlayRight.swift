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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class PlayReadyPlayRight: PlayReadyRight {

	public class PlayReadyPlayRightTokenizer: PlayReadyRight.PlayReadyRightTokenizer {
		
		public var analogVideoOPL: BaseTokenizedObject {
			get {
				return self.append("analogVideoOPL") 
			}
		}
		
		public var analogVideoOutputProtectionList: ArrayTokenizedObject<PlayReadyAnalogVideoOPIdHolder.PlayReadyAnalogVideoOPIdHolderTokenizer> {
			get {
				return ArrayTokenizedObject<PlayReadyAnalogVideoOPIdHolder.PlayReadyAnalogVideoOPIdHolderTokenizer>(self.append("analogVideoOutputProtectionList"))
			} 
		}
		
		public var compressedDigitalAudioOPL: BaseTokenizedObject {
			get {
				return self.append("compressedDigitalAudioOPL") 
			}
		}
		
		public var compressedDigitalVideoOPL: BaseTokenizedObject {
			get {
				return self.append("compressedDigitalVideoOPL") 
			}
		}
		
		public var digitalAudioOutputProtectionList: ArrayTokenizedObject<PlayReadyDigitalAudioOPIdHolder.PlayReadyDigitalAudioOPIdHolderTokenizer> {
			get {
				return ArrayTokenizedObject<PlayReadyDigitalAudioOPIdHolder.PlayReadyDigitalAudioOPIdHolderTokenizer>(self.append("digitalAudioOutputProtectionList"))
			} 
		}
		
		public var uncompressedDigitalAudioOPL: BaseTokenizedObject {
			get {
				return self.append("uncompressedDigitalAudioOPL") 
			}
		}
		
		public var uncompressedDigitalVideoOPL: BaseTokenizedObject {
			get {
				return self.append("uncompressedDigitalVideoOPL") 
			}
		}
		
		public var firstPlayExpiration: BaseTokenizedObject {
			get {
				return self.append("firstPlayExpiration") 
			}
		}
		
		public var playEnablers: ArrayTokenizedObject<PlayReadyPlayEnablerHolder.PlayReadyPlayEnablerHolderTokenizer> {
			get {
				return ArrayTokenizedObject<PlayReadyPlayEnablerHolder.PlayReadyPlayEnablerHolderTokenizer>(self.append("playEnablers"))
			} 
		}
	}

	public var analogVideoOPL: PlayReadyAnalogVideoOPL? = nil
	public var analogVideoOutputProtectionList: Array<PlayReadyAnalogVideoOPIdHolder>? = nil
	public var compressedDigitalAudioOPL: PlayReadyDigitalAudioOPL? = nil
	public var compressedDigitalVideoOPL: PlayReadyCompressedDigitalVideoOPL? = nil
	public var digitalAudioOutputProtectionList: Array<PlayReadyDigitalAudioOPIdHolder>? = nil
	public var uncompressedDigitalAudioOPL: PlayReadyDigitalAudioOPL? = nil
	public var uncompressedDigitalVideoOPL: PlayReadyUncompressedDigitalVideoOPL? = nil
	public var firstPlayExpiration: Int? = nil
	public var playEnablers: Array<PlayReadyPlayEnablerHolder>? = nil


	public func setMultiRequestToken(analogVideoOPL: String) {
		self.dict["analogVideoOPL"] = analogVideoOPL
	}
	
	public func setMultiRequestToken(compressedDigitalAudioOPL: String) {
		self.dict["compressedDigitalAudioOPL"] = compressedDigitalAudioOPL
	}
	
	public func setMultiRequestToken(compressedDigitalVideoOPL: String) {
		self.dict["compressedDigitalVideoOPL"] = compressedDigitalVideoOPL
	}
	
	public func setMultiRequestToken(uncompressedDigitalAudioOPL: String) {
		self.dict["uncompressedDigitalAudioOPL"] = uncompressedDigitalAudioOPL
	}
	
	public func setMultiRequestToken(uncompressedDigitalVideoOPL: String) {
		self.dict["uncompressedDigitalVideoOPL"] = uncompressedDigitalVideoOPL
	}
	
	public func setMultiRequestToken(firstPlayExpiration: String) {
		self.dict["firstPlayExpiration"] = firstPlayExpiration
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["analogVideoOPL"] != nil {
			analogVideoOPL = PlayReadyAnalogVideoOPL(rawValue: (dict["analogVideoOPL"] as? Int)!)
		}
		if dict["analogVideoOutputProtectionList"] != nil {
			analogVideoOutputProtectionList = try JSONParser.parse(array: dict["analogVideoOutputProtectionList"] as! [Any])
		}
		if dict["compressedDigitalAudioOPL"] != nil {
			compressedDigitalAudioOPL = PlayReadyDigitalAudioOPL(rawValue: (dict["compressedDigitalAudioOPL"] as? Int)!)
		}
		if dict["compressedDigitalVideoOPL"] != nil {
			compressedDigitalVideoOPL = PlayReadyCompressedDigitalVideoOPL(rawValue: (dict["compressedDigitalVideoOPL"] as? Int)!)
		}
		if dict["digitalAudioOutputProtectionList"] != nil {
			digitalAudioOutputProtectionList = try JSONParser.parse(array: dict["digitalAudioOutputProtectionList"] as! [Any])
		}
		if dict["uncompressedDigitalAudioOPL"] != nil {
			uncompressedDigitalAudioOPL = PlayReadyDigitalAudioOPL(rawValue: (dict["uncompressedDigitalAudioOPL"] as? Int)!)
		}
		if dict["uncompressedDigitalVideoOPL"] != nil {
			uncompressedDigitalVideoOPL = PlayReadyUncompressedDigitalVideoOPL(rawValue: (dict["uncompressedDigitalVideoOPL"] as? Int)!)
		}
		if dict["firstPlayExpiration"] != nil {
			firstPlayExpiration = dict["firstPlayExpiration"] as? Int
		}
		if dict["playEnablers"] != nil {
			playEnablers = try JSONParser.parse(array: dict["playEnablers"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(analogVideoOPL != nil) {
			dict["analogVideoOPL"] = analogVideoOPL!.rawValue
		}
		if(analogVideoOutputProtectionList != nil) {
			dict["analogVideoOutputProtectionList"] = analogVideoOutputProtectionList!.map { value in value.toDictionary() }
		}
		if(compressedDigitalAudioOPL != nil) {
			dict["compressedDigitalAudioOPL"] = compressedDigitalAudioOPL!.rawValue
		}
		if(compressedDigitalVideoOPL != nil) {
			dict["compressedDigitalVideoOPL"] = compressedDigitalVideoOPL!.rawValue
		}
		if(digitalAudioOutputProtectionList != nil) {
			dict["digitalAudioOutputProtectionList"] = digitalAudioOutputProtectionList!.map { value in value.toDictionary() }
		}
		if(uncompressedDigitalAudioOPL != nil) {
			dict["uncompressedDigitalAudioOPL"] = uncompressedDigitalAudioOPL!.rawValue
		}
		if(uncompressedDigitalVideoOPL != nil) {
			dict["uncompressedDigitalVideoOPL"] = uncompressedDigitalVideoOPL!.rawValue
		}
		if(firstPlayExpiration != nil) {
			dict["firstPlayExpiration"] = firstPlayExpiration!
		}
		if(playEnablers != nil) {
			dict["playEnablers"] = playEnablers!.map { value in value.toDictionary() }
		}
		return dict
	}
}

