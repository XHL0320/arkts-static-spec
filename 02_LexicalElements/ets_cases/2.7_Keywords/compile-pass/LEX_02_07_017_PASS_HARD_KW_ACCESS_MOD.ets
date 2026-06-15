/**
 * @id LEX_02_07_017_PASS_HARD_KW_ACCESS_MOD
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: public, private, protected
 * @note 正向用例：访问修饰符
 */
class Holder017 {
  public pubField: int = 0
  private privField: int = 0
  protected protField: int = 0

  public pubMethod(): int {
    return this.privField + this.protField
  }
}

function test017(): void {
  let h: Holder017 = new Holder017()
  h.pubField = 1
}
