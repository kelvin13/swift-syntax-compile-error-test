import SwiftSyntax

class X: SyntaxRewriter {
  override func visit(_ list:MemberDeclListSyntax) -> Syntax {
      let filteredList:MemberDeclListSyntax = .init(list.filter({ _ in true }))
      return super.visit(filteredList)
  }
}