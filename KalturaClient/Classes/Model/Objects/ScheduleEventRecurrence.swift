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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class ScheduleEventRecurrence: ObjectBase {

	public class ScheduleEventRecurrenceTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var frequency: BaseTokenizedObject {
			get {
				return self.append("frequency") 
			}
		}
		
		public var until: BaseTokenizedObject {
			get {
				return self.append("until") 
			}
		}
		
		public var timeZone: BaseTokenizedObject {
			get {
				return self.append("timeZone") 
			}
		}
		
		public var count: BaseTokenizedObject {
			get {
				return self.append("count") 
			}
		}
		
		public var interval: BaseTokenizedObject {
			get {
				return self.append("interval") 
			}
		}
		
		public var bySecond: BaseTokenizedObject {
			get {
				return self.append("bySecond") 
			}
		}
		
		public var byMinute: BaseTokenizedObject {
			get {
				return self.append("byMinute") 
			}
		}
		
		public var byHour: BaseTokenizedObject {
			get {
				return self.append("byHour") 
			}
		}
		
		public var byDay: BaseTokenizedObject {
			get {
				return self.append("byDay") 
			}
		}
		
		public var byMonthDay: BaseTokenizedObject {
			get {
				return self.append("byMonthDay") 
			}
		}
		
		public var byYearDay: BaseTokenizedObject {
			get {
				return self.append("byYearDay") 
			}
		}
		
		public var byWeekNumber: BaseTokenizedObject {
			get {
				return self.append("byWeekNumber") 
			}
		}
		
		public var byMonth: BaseTokenizedObject {
			get {
				return self.append("byMonth") 
			}
		}
		
		public var byOffset: BaseTokenizedObject {
			get {
				return self.append("byOffset") 
			}
		}
		
		public var weekStartDay: BaseTokenizedObject {
			get {
				return self.append("weekStartDay") 
			}
		}
	}

	public var name: String? = nil
	public var frequency: ScheduleEventRecurrenceFrequency? = nil
	public var until: Int? = nil
	/**  TimeZone String  */
	public var timeZone: String? = nil
	public var count: Int? = nil
	public var interval: Int? = nil
	/**  Comma separated numbers between 0 to 59  */
	public var bySecond: String? = nil
	/**  Comma separated numbers between 0 to 59  */
	public var byMinute: String? = nil
	/**  Comma separated numbers between 0 to 23  */
	public var byHour: String? = nil
	/**  Comma separated of KalturaScheduleEventRecurrenceDay   Each byDay value can also
	  be preceded by a positive (+n) or negative (-n) integer.   If present, this
	  indicates the nth occurrence of the specific day within the MONTHLY or YEARLY
	  RRULE.   For example, within a MONTHLY rule, +1MO (or simply 1MO) represents the
	  first Monday within the month, whereas -1MO represents the last Monday of the
	  month.   If an integer modifier is not present, it means all days of this type
	  within the specified frequency.   For example, within a MONTHLY rule, MO
	  represents all Mondays within the month.  */
	public var byDay: String? = nil
	/**  Comma separated of numbers between -31 to 31, excluding 0.   For example, -10
	  represents the tenth to the last day of the month.  */
	public var byMonthDay: String? = nil
	/**  Comma separated of numbers between -366 to 366, excluding 0.   For example, -1
	  represents the last day of the year (December 31st) and -306 represents the
	  306th to the last day of the year (March 1st).  */
	public var byYearDay: String? = nil
	/**  Comma separated of numbers between -53 to 53, excluding 0.   This corresponds to
	  weeks according to week numbering.   A week is defined as a seven day period,
	  starting on the day of the week defined to be the week start.   Week number one
	  of the calendar year is the first week which contains at least four (4) days in
	  that calendar year.   This rule part is only valid for YEARLY frequency.   For
	  example, 3 represents the third week of the year.  */
	public var byWeekNumber: String? = nil
	/**  Comma separated numbers between 1 to 12  */
	public var byMonth: String? = nil
	/**  Comma separated of numbers between -366 to 366, excluding 0.   Corresponds to
	  the nth occurrence within the set of events specified by the rule.   It must
	  only be used in conjunction with another byrule part.   For example "the last
	  work day of the month" could be represented as:
	  frequency=MONTHLY;byDay=MO,TU,WE,TH,FR;byOffset=-1   Each byOffset value can
	  include a positive (+n) or negative (-n) integer.   If present, this indicates
	  the nth occurrence of the specific occurrence within the set of events specified
	  by the rule.  */
	public var byOffset: String? = nil
	public var weekStartDay: ScheduleEventRecurrenceDay? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(frequency: String) {
		self.dict["frequency"] = frequency
	}
	
	public func setMultiRequestToken(until: String) {
		self.dict["until"] = until
	}
	
	public func setMultiRequestToken(timeZone: String) {
		self.dict["timeZone"] = timeZone
	}
	
	public func setMultiRequestToken(count: String) {
		self.dict["count"] = count
	}
	
	public func setMultiRequestToken(interval: String) {
		self.dict["interval"] = interval
	}
	
	public func setMultiRequestToken(bySecond: String) {
		self.dict["bySecond"] = bySecond
	}
	
	public func setMultiRequestToken(byMinute: String) {
		self.dict["byMinute"] = byMinute
	}
	
	public func setMultiRequestToken(byHour: String) {
		self.dict["byHour"] = byHour
	}
	
	public func setMultiRequestToken(byDay: String) {
		self.dict["byDay"] = byDay
	}
	
	public func setMultiRequestToken(byMonthDay: String) {
		self.dict["byMonthDay"] = byMonthDay
	}
	
	public func setMultiRequestToken(byYearDay: String) {
		self.dict["byYearDay"] = byYearDay
	}
	
	public func setMultiRequestToken(byWeekNumber: String) {
		self.dict["byWeekNumber"] = byWeekNumber
	}
	
	public func setMultiRequestToken(byMonth: String) {
		self.dict["byMonth"] = byMonth
	}
	
	public func setMultiRequestToken(byOffset: String) {
		self.dict["byOffset"] = byOffset
	}
	
	public func setMultiRequestToken(weekStartDay: String) {
		self.dict["weekStartDay"] = weekStartDay
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["frequency"] != nil {
			frequency = ScheduleEventRecurrenceFrequency(rawValue: "\(dict["frequency"]!)")
		}
		if dict["until"] != nil {
			until = dict["until"] as? Int
		}
		if dict["timeZone"] != nil {
			timeZone = dict["timeZone"] as? String
		}
		if dict["count"] != nil {
			count = dict["count"] as? Int
		}
		if dict["interval"] != nil {
			interval = dict["interval"] as? Int
		}
		if dict["bySecond"] != nil {
			bySecond = dict["bySecond"] as? String
		}
		if dict["byMinute"] != nil {
			byMinute = dict["byMinute"] as? String
		}
		if dict["byHour"] != nil {
			byHour = dict["byHour"] as? String
		}
		if dict["byDay"] != nil {
			byDay = dict["byDay"] as? String
		}
		if dict["byMonthDay"] != nil {
			byMonthDay = dict["byMonthDay"] as? String
		}
		if dict["byYearDay"] != nil {
			byYearDay = dict["byYearDay"] as? String
		}
		if dict["byWeekNumber"] != nil {
			byWeekNumber = dict["byWeekNumber"] as? String
		}
		if dict["byMonth"] != nil {
			byMonth = dict["byMonth"] as? String
		}
		if dict["byOffset"] != nil {
			byOffset = dict["byOffset"] as? String
		}
		if dict["weekStartDay"] != nil {
			weekStartDay = ScheduleEventRecurrenceDay(rawValue: "\(dict["weekStartDay"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(frequency != nil) {
			dict["frequency"] = frequency!.rawValue
		}
		if(until != nil) {
			dict["until"] = until!
		}
		if(timeZone != nil) {
			dict["timeZone"] = timeZone!
		}
		if(count != nil) {
			dict["count"] = count!
		}
		if(interval != nil) {
			dict["interval"] = interval!
		}
		if(bySecond != nil) {
			dict["bySecond"] = bySecond!
		}
		if(byMinute != nil) {
			dict["byMinute"] = byMinute!
		}
		if(byHour != nil) {
			dict["byHour"] = byHour!
		}
		if(byDay != nil) {
			dict["byDay"] = byDay!
		}
		if(byMonthDay != nil) {
			dict["byMonthDay"] = byMonthDay!
		}
		if(byYearDay != nil) {
			dict["byYearDay"] = byYearDay!
		}
		if(byWeekNumber != nil) {
			dict["byWeekNumber"] = byWeekNumber!
		}
		if(byMonth != nil) {
			dict["byMonth"] = byMonth!
		}
		if(byOffset != nil) {
			dict["byOffset"] = byOffset!
		}
		if(weekStartDay != nil) {
			dict["weekStartDay"] = weekStartDay!.rawValue
		}
		return dict
	}
}

