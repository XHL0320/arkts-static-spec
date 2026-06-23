/**
 * @id CLS_09_04_003_PASS_INHERIT_PUBLIC_PROTECTED
 * @expect compile-pass
 * @section 9.4
 * @design 派生类继承基类的public和protected成员
 * @note 正向用例：验证继承public/protected字段和方�?
 */
class BaseMember {
  public pubField: int = 10
  protected protField: string = "base"
  public pubMethod(): int { return this.pubField }
  protected protMethod(): string { return this.protField }
}
class DerivedMember extends BaseMember {
  public useInherited(): string {
    let a: int = this.pubField
    let b: string = this.protField
    return b
  }
}
