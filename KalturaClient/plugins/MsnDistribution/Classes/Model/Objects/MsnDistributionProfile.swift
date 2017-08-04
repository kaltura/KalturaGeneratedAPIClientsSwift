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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class MsnDistributionProfile: ConfigurableDistributionProfile {

	public var username: String? = nil
	public var password: String? = nil
	public var domain: String? = nil
	public var csId: String? = nil
	public var source: String? = nil
	public var sourceFriendlyName: String? = nil
	public var pageGroup: String? = nil
	public var sourceFlavorParamsId: Int? = nil
	public var wmvFlavorParamsId: Int? = nil
	public var flvFlavorParamsId: Int? = nil
	public var slFlavorParamsId: Int? = nil
	public var slHdFlavorParamsId: Int? = nil
	public var msnvideoCat: String? = nil
	public var msnvideoTop: String? = nil
	public var msnvideoTopCat: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["domain"] != nil {
			domain = dict["domain"] as? String
		}
		if dict["csId"] != nil {
			csId = dict["csId"] as? String
		}
		if dict["source"] != nil {
			source = dict["source"] as? String
		}
		if dict["sourceFriendlyName"] != nil {
			sourceFriendlyName = dict["sourceFriendlyName"] as? String
		}
		if dict["pageGroup"] != nil {
			pageGroup = dict["pageGroup"] as? String
		}
		if dict["sourceFlavorParamsId"] != nil {
			sourceFlavorParamsId = dict["sourceFlavorParamsId"] as? Int
		}
		if dict["wmvFlavorParamsId"] != nil {
			wmvFlavorParamsId = dict["wmvFlavorParamsId"] as? Int
		}
		if dict["flvFlavorParamsId"] != nil {
			flvFlavorParamsId = dict["flvFlavorParamsId"] as? Int
		}
		if dict["slFlavorParamsId"] != nil {
			slFlavorParamsId = dict["slFlavorParamsId"] as? Int
		}
		if dict["slHdFlavorParamsId"] != nil {
			slHdFlavorParamsId = dict["slHdFlavorParamsId"] as? Int
		}
		if dict["msnvideoCat"] != nil {
			msnvideoCat = dict["msnvideoCat"] as? String
		}
		if dict["msnvideoTop"] != nil {
			msnvideoTop = dict["msnvideoTop"] as? String
		}
		if dict["msnvideoTopCat"] != nil {
			msnvideoTopCat = dict["msnvideoTopCat"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(username != nil) {
			dict["username"] = username!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(domain != nil) {
			dict["domain"] = domain!
		}
		if(csId != nil) {
			dict["csId"] = csId!
		}
		if(source != nil) {
			dict["source"] = source!
		}
		if(sourceFriendlyName != nil) {
			dict["sourceFriendlyName"] = sourceFriendlyName!
		}
		if(pageGroup != nil) {
			dict["pageGroup"] = pageGroup!
		}
		if(sourceFlavorParamsId != nil) {
			dict["sourceFlavorParamsId"] = sourceFlavorParamsId!
		}
		if(wmvFlavorParamsId != nil) {
			dict["wmvFlavorParamsId"] = wmvFlavorParamsId!
		}
		if(flvFlavorParamsId != nil) {
			dict["flvFlavorParamsId"] = flvFlavorParamsId!
		}
		if(slFlavorParamsId != nil) {
			dict["slFlavorParamsId"] = slFlavorParamsId!
		}
		if(slHdFlavorParamsId != nil) {
			dict["slHdFlavorParamsId"] = slHdFlavorParamsId!
		}
		if(msnvideoCat != nil) {
			dict["msnvideoCat"] = msnvideoCat!
		}
		if(msnvideoTop != nil) {
			dict["msnvideoTop"] = msnvideoTop!
		}
		if(msnvideoTopCat != nil) {
			dict["msnvideoTopCat"] = msnvideoTopCat!
		}
		return dict
	}
}

