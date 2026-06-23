/**
 * @id CLS_09_06_5_002_PASS_LATE_INIT_ASSIGN_THEN_READ
 * @expect compile-pass
 * @section 9.6.5
 * @design late init字段赋值后读取编译通过
 * @note 正向用例：spec规定late init字段初始化后可读
 */
class LateInitRead {
  val!: string
  init(): void {
    this.val = "hello"
  }
  read(): string {
    return this.val
  }
}
