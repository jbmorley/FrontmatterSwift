// MIT License
//
// Copyright (c) 2024-2026 Jason Morley
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

import XCTest
@testable import FrontmatterSwift

class DateDetectionTests: XCTestCase {

    func testDateDetection() throws {
        let document = try FrontmatterDocument(contents: """
---
date: 2024-01-17T17:53:07-1000
---
""")

        XCTAssertEqual(document.content, "")
        let metadata: [AnyHashable: Any] = ["date": Date(2024, 01, 17, 17, 53, 07, timeZone: TimeZone(-10)!)]
        XCTAssertEqual(document.metadata as NSObject, metadata as NSObject)
    }

    func testDateDetectionDisabled() throws {
        var options = DecodeOptions()
        options.detectDates = false
        let document = try FrontmatterDocument(contents: """
---
date: 2024-01-17T17:53:07-1000
---
""", options: options)

        XCTAssertEqual(document.content, "")
        let metadata: [AnyHashable: Any] = ["date": "2024-01-17T17:53:07-1000"]
        XCTAssertEqual(document.metadata as NSObject, metadata as NSObject)
    }

}
