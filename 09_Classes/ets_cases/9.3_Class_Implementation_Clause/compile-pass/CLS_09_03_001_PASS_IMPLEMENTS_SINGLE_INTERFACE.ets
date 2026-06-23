/**
 * @id CLS_09_03_001_PASS_IMPLEMENTS_SINGLE_INTERFACE
 * @expect compile-pass
 * @section 9.3
 * @design 类实现单个接口编译通过
 * @note 正向用例：验证implements子句指向接口的基本用法
 */
interface IPrintable {
  print(): void
}
class DocPrinter implements IPrintable {
  print(): void {
    console.log("document printed")
  }
}
