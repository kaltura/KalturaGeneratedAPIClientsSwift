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

open class CrossKalturaDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class CrossKalturaDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var distributedFlavorAssets: BaseTokenizedObject {
			get {
				return self.append("distributedFlavorAssets") 
			}
		}
		
		public var distributedThumbAssets: BaseTokenizedObject {
			get {
				return self.append("distributedThumbAssets") 
			}
		}
		
		public var distributedMetadata: BaseTokenizedObject {
			get {
				return self.append("distributedMetadata") 
			}
		}
		
		public var distributedCaptionAssets: BaseTokenizedObject {
			get {
				return self.append("distributedCaptionAssets") 
			}
		}
		
		public var distributedFileAssets: BaseTokenizedObject {
			get {
				return self.append("distributedFileAssets") 
			}
		}
		
		public var distributedAttachmentAssets: BaseTokenizedObject {
			get {
				return self.append("distributedAttachmentAssets") 
			}
		}
		
		public var distributedCuePoints: BaseTokenizedObject {
			get {
				return self.append("distributedCuePoints") 
			}
		}
		
		public var distributedThumbCuePoints: BaseTokenizedObject {
			get {
				return self.append("distributedThumbCuePoints") 
			}
		}
		
		public var distributedTimedThumbAssets: BaseTokenizedObject {
			get {
				return self.append("distributedTimedThumbAssets") 
			}
		}
	}

	/**  Key-value array where the keys are IDs of distributed flavor assets in the
	  source account and the values are the matching IDs in the target account  */
	public var distributedFlavorAssets: String? = nil
	/**  Key-value array where the keys are IDs of distributed thumb assets in the source
	  account and the values are the matching IDs in the target account  */
	public var distributedThumbAssets: String? = nil
	/**  Key-value array where the keys are IDs of distributed metadata objects in the
	  source account and the values are the matching IDs in the target account  */
	public var distributedMetadata: String? = nil
	/**  Key-value array where the keys are IDs of distributed caption assets in the
	  source account and the values are the matching IDs in the target account  */
	public var distributedCaptionAssets: String? = nil
	/**  Key-value array where the keys are IDs of distributed fileassets in the source
	  account and the values are the matching IDs in the target account  */
	public var distributedFileAssets: String? = nil
	/**  Key-value array where the keys are IDs of distributed caption assets in the
	  source account and the values are the matching IDs in the target account  */
	public var distributedAttachmentAssets: String? = nil
	/**  Key-value array where the keys are IDs of distributed cue points in the source
	  account and the values are the matching IDs in the target account  */
	public var distributedCuePoints: String? = nil
	/**  Key-value array where the keys are IDs of distributed thumb cue points in the
	  source account and the values are the matching IDs in the target account  */
	public var distributedThumbCuePoints: String? = nil
	/**  Key-value array where the keys are IDs of distributed timed thumb assets in the
	  source account and the values are the matching IDs in the target account  */
	public var distributedTimedThumbAssets: String? = nil


	public func setMultiRequestToken(distributedFlavorAssets: String) {
		self.dict["distributedFlavorAssets"] = distributedFlavorAssets
	}
	
	public func setMultiRequestToken(distributedThumbAssets: String) {
		self.dict["distributedThumbAssets"] = distributedThumbAssets
	}
	
	public func setMultiRequestToken(distributedMetadata: String) {
		self.dict["distributedMetadata"] = distributedMetadata
	}
	
	public func setMultiRequestToken(distributedCaptionAssets: String) {
		self.dict["distributedCaptionAssets"] = distributedCaptionAssets
	}
	
	public func setMultiRequestToken(distributedFileAssets: String) {
		self.dict["distributedFileAssets"] = distributedFileAssets
	}
	
	public func setMultiRequestToken(distributedAttachmentAssets: String) {
		self.dict["distributedAttachmentAssets"] = distributedAttachmentAssets
	}
	
	public func setMultiRequestToken(distributedCuePoints: String) {
		self.dict["distributedCuePoints"] = distributedCuePoints
	}
	
	public func setMultiRequestToken(distributedThumbCuePoints: String) {
		self.dict["distributedThumbCuePoints"] = distributedThumbCuePoints
	}
	
	public func setMultiRequestToken(distributedTimedThumbAssets: String) {
		self.dict["distributedTimedThumbAssets"] = distributedTimedThumbAssets
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["distributedFlavorAssets"] != nil {
			distributedFlavorAssets = dict["distributedFlavorAssets"] as? String
		}
		if dict["distributedThumbAssets"] != nil {
			distributedThumbAssets = dict["distributedThumbAssets"] as? String
		}
		if dict["distributedMetadata"] != nil {
			distributedMetadata = dict["distributedMetadata"] as? String
		}
		if dict["distributedCaptionAssets"] != nil {
			distributedCaptionAssets = dict["distributedCaptionAssets"] as? String
		}
		if dict["distributedFileAssets"] != nil {
			distributedFileAssets = dict["distributedFileAssets"] as? String
		}
		if dict["distributedAttachmentAssets"] != nil {
			distributedAttachmentAssets = dict["distributedAttachmentAssets"] as? String
		}
		if dict["distributedCuePoints"] != nil {
			distributedCuePoints = dict["distributedCuePoints"] as? String
		}
		if dict["distributedThumbCuePoints"] != nil {
			distributedThumbCuePoints = dict["distributedThumbCuePoints"] as? String
		}
		if dict["distributedTimedThumbAssets"] != nil {
			distributedTimedThumbAssets = dict["distributedTimedThumbAssets"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(distributedFlavorAssets != nil) {
			dict["distributedFlavorAssets"] = distributedFlavorAssets!
		}
		if(distributedThumbAssets != nil) {
			dict["distributedThumbAssets"] = distributedThumbAssets!
		}
		if(distributedMetadata != nil) {
			dict["distributedMetadata"] = distributedMetadata!
		}
		if(distributedCaptionAssets != nil) {
			dict["distributedCaptionAssets"] = distributedCaptionAssets!
		}
		if(distributedFileAssets != nil) {
			dict["distributedFileAssets"] = distributedFileAssets!
		}
		if(distributedAttachmentAssets != nil) {
			dict["distributedAttachmentAssets"] = distributedAttachmentAssets!
		}
		if(distributedCuePoints != nil) {
			dict["distributedCuePoints"] = distributedCuePoints!
		}
		if(distributedThumbCuePoints != nil) {
			dict["distributedThumbCuePoints"] = distributedThumbCuePoints!
		}
		if(distributedTimedThumbAssets != nil) {
			dict["distributedTimedThumbAssets"] = distributedTimedThumbAssets!
		}
		return dict
	}
}

