//
//  VersionNumberTests.swift
//  VersionNumberTests
//
//  Created by Andei Buite on 2025/06/05.
//

import Testing
@testable import VersionNumbers

struct SemVerTests
{

    @Test func example() async throws
    {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        #expect(true)
    }
    
    @Test func comparing() async throws
    {
        #expect(SemVer(1,0,0) < SemVer(1,0,1))
        #expect(SemVer(1,1,0) > SemVer(1,0,0))
        #expect(SemVer(1,0,0) > SemVer(0,1,0))
        #expect(SemVer(1,0,0) == SemVer(1,0,0))
    }

}
