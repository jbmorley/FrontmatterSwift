// Copyright (c) 2024 Jason Morley
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

import Licensable

fileprivate let yamsLicense = License(id: "https://github.com/jpsim/Yams",
                                      name: "Yams",
                                      author: "JP Simard",
                                      text: String(contentsOfResource: "yams-license"),
                                      attributes: [
                                        .url(URL(string: "https://github.com/jpsim/Yams")!, title: "GitHub"),
                                      ])

fileprivate let frontmatterSwiftLicense = License(id: "https://github.com/jbmorley/FrontmatterSwift",
                                                  name: "FrontmatterSwift",
                                                  author: "Jason Morley",
                                                  text: String(contentsOfResource: "frontmatterswift-license"),
                                                  attributes: [
                                                    .url(URL(string: "https://github.com/jbmorley/FrontmatterSwift")!, title: "GitHub"),
                                                  ],
                                                  licenses: [
                                                    .licensable,
                                                    yamsLicense,
                                                  ])

extension Licensable where Self == License {

    public static var frontmatterSwift: License { frontmatterSwiftLicense }

}
