// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2023  Kaltura Inc.
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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class ESearchScoreFunctionParams: ObjectBase {

	public class ESearchScoreFunctionParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var decayAlgorithm: BaseTokenizedObject {
			get {
				return self.append("decayAlgorithm") 
			}
		}
		
		public var functionField: BaseTokenizedObject {
			get {
				return self.append("functionField") 
			}
		}
		
		public var boostMode: BaseTokenizedObject {
			get {
				return self.append("boostMode") 
			}
		}
		
		public var origin: BaseTokenizedObject {
			get {
				return self.append("origin") 
			}
		}
		
		public var weight: BaseTokenizedObject {
			get {
				return self.append("weight") 
			}
		}
		
		public var scale: BaseTokenizedObject {
			get {
				return self.append("scale") 
			}
		}
		
		public var decay: BaseTokenizedObject {
			get {
				return self.append("decay") 
			}
		}
	}

	public var decayAlgorithm: ESearchScoreFunctionDecayAlgorithm? = nil
	public var functionField: ESearchScoreFunctionField? = nil
	public var boostMode: ESearchScoreFunctionBoostMode? = nil
	public var origin: ESearchScoreFunctionOrigin? = nil
	public var weight: Double? = nil
	public var scale: String? = nil
	public var decay: Double? = nil


	public func setMultiRequestToken(decayAlgorithm: String) {
		self.dict["decayAlgorithm"] = decayAlgorithm
	}
	
	public func setMultiRequestToken(functionField: String) {
		self.dict["functionField"] = functionField
	}
	
	public func setMultiRequestToken(boostMode: String) {
		self.dict["boostMode"] = boostMode
	}
	
	public func setMultiRequestToken(origin: String) {
		self.dict["origin"] = origin
	}
	
	public func setMultiRequestToken(weight: String) {
		self.dict["weight"] = weight
	}
	
	public func setMultiRequestToken(scale: String) {
		self.dict["scale"] = scale
	}
	
	public func setMultiRequestToken(decay: String) {
		self.dict["decay"] = decay
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["decayAlgorithm"] != nil {
			decayAlgorithm = ESearchScoreFunctionDecayAlgorithm(rawValue: "\(dict["decayAlgorithm"]!)")
		}
		if dict["functionField"] != nil {
			functionField = ESearchScoreFunctionField(rawValue: "\(dict["functionField"]!)")
		}
		if dict["boostMode"] != nil {
			boostMode = ESearchScoreFunctionBoostMode(rawValue: "\(dict["boostMode"]!)")
		}
		if dict["origin"] != nil {
			origin = ESearchScoreFunctionOrigin(rawValue: "\(dict["origin"]!)")
		}
		if dict["weight"] != nil {
			weight = dict["weight"] as? Double
		}
		if dict["scale"] != nil {
			scale = dict["scale"] as? String
		}
		if dict["decay"] != nil {
			decay = dict["decay"] as? Double
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(decayAlgorithm != nil) {
			dict["decayAlgorithm"] = decayAlgorithm!.rawValue
		}
		if(functionField != nil) {
			dict["functionField"] = functionField!.rawValue
		}
		if(boostMode != nil) {
			dict["boostMode"] = boostMode!.rawValue
		}
		if(origin != nil) {
			dict["origin"] = origin!.rawValue
		}
		if(weight != nil) {
			dict["weight"] = weight!
		}
		if(scale != nil) {
			dict["scale"] = scale!
		}
		if(decay != nil) {
			dict["decay"] = decay!
		}
		return dict
	}
}

