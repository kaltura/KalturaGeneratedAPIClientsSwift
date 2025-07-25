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

open class MetadataEnrichmentVendorTaskData: LocalizedVendorTaskData {

	public class MetadataEnrichmentVendorTaskDataTokenizer: LocalizedVendorTaskData.LocalizedVendorTaskDataTokenizer {
		
		public var detailLevel: BaseTokenizedObject {
			get {
				return self.append("detailLevel") 
			}
		}
		
		public var instruction: BaseTokenizedObject {
			get {
				return self.append("instruction") 
			}
		}
		
		public var shouldApply: BaseTokenizedObject {
			get {
				return self.append("shouldApply") 
			}
		}
		
		public var applyMode: BaseTokenizedObject {
			get {
				return self.append("applyMode") 
			}
		}
		
		public var overrideFields: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("overrideFields"))
			} 
		}
	}

	/**  The level of detail for the metadata enrichment process.  */
	public var detailLevel: String? = nil
	/**  Instructions describing what should be taken into account during the metadata
	  enrichment process.  */
	public var instruction: String? = nil
	/**  Indicates whether the metadata enrichment results should be automatically
	  applied on the task entry.   Default is false.  */
	public var shouldApply: Bool? = nil
	/**  Specifies how metadata fields should be applied during enrichment.   If
	  'FILL_EMPTY_AND_OVERRIDE_LIST', use overrideFields to specify which fields to
	  override.  */
	public var applyMode: MetadataEnrichmentApplyMode? = nil
	/**  List of entry fields to override when applyMode is set to
	  'FILL_EMPTY_AND_OVERRIDE_LIST'.  */
	public var overrideFields: Array<StringHolder>? = nil


	public func setMultiRequestToken(detailLevel: String) {
		self.dict["detailLevel"] = detailLevel
	}
	
	public func setMultiRequestToken(instruction: String) {
		self.dict["instruction"] = instruction
	}
	
	public func setMultiRequestToken(shouldApply: String) {
		self.dict["shouldApply"] = shouldApply
	}
	
	public func setMultiRequestToken(applyMode: String) {
		self.dict["applyMode"] = applyMode
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["detailLevel"] != nil {
			detailLevel = dict["detailLevel"] as? String
		}
		if dict["instruction"] != nil {
			instruction = dict["instruction"] as? String
		}
		if dict["shouldApply"] != nil {
			shouldApply = dict["shouldApply"] as? Bool
		}
		if dict["applyMode"] != nil {
			applyMode = MetadataEnrichmentApplyMode(rawValue: "\(dict["applyMode"]!)")
		}
		if dict["overrideFields"] != nil {
			overrideFields = try JSONParser.parse(array: dict["overrideFields"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(detailLevel != nil) {
			dict["detailLevel"] = detailLevel!
		}
		if(instruction != nil) {
			dict["instruction"] = instruction!
		}
		if(shouldApply != nil) {
			dict["shouldApply"] = shouldApply!
		}
		if(applyMode != nil) {
			dict["applyMode"] = applyMode!.rawValue
		}
		if(overrideFields != nil) {
			dict["overrideFields"] = overrideFields!.map { value in value.toDictionary() }
		}
		return dict
	}
}

