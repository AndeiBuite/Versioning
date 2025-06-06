//
//  Semantic Versioning.swift
//  VersionNumber
//
//  Created by Andei Buite on 2025/06/05.
//

public class SemVer
{
    /// MAJOR version when you make incompatible API changes.
    public var major:UInt32 = 0
    
    /// MINOR version when you add functionality in a backward compatible manner.
    public var minor:UInt32 = 0
    
    /// PATCH version when you make backward compatible bug fixes.
    public var patch:UInt32 = 0
    
    /// Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.
    public var additionalLabel:String? = nil
}

extension SemVer
{
    convenience init(_ major:UInt32, _ minor:UInt32, _ patch:UInt32, _ label:String? = nil)
    {
        self.init()
        self.major = major
        self.minor = minor
        self.patch = patch
        self.additionalLabel = label
    }
}

extension SemVer: Comparable, Equatable
{
    public static func < (lhs:SemVer, rhs:SemVer) -> Bool
    {
        return if lhs.major < rhs.major
        {
            true
        }
        else if lhs.minor < rhs.minor
        {
            true
        }
        else if lhs.patch < rhs.patch
        {
            true
        }
        else
        {
            false
        }
    }
    
    public static func == (lhs:SemVer, rhs:SemVer) -> Bool
    {
        return (lhs.major == rhs.major) && (lhs.minor == rhs.minor) && (lhs.patch == lhs.patch)
    }
}

extension SemVer: CustomStringConvertible
{
    public var description:String
    {
        return if let additionalLabel = self.additionalLabel
        {
            "\(major).\(minor).\(patch) \(String(describing: additionalLabel))"
        }
        else
        {
            "\(major).\(minor).\(patch)"
        }
    }
}

extension SemVer: VersionNumber
{
    
}
