import Foundation

struct Friend : Codable,Identifiable {
    public var id: String       // ID
    public var name: String   // 名前
    /// 味の種類の文字列を取得する
}

struct MsgFriend : Codable,Identifiable {
    public var id: String       // ID
    public var name: String   // 名前
    public var sendUser: Boolean
    /// 味の種類の文字列を取得する
}


