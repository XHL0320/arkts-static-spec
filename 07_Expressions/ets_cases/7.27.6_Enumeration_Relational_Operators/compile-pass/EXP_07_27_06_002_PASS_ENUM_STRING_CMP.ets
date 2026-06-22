/**
 * @id EXP_07_27_06_002_PASS_ENUM_STRING_CMP
 * @expect compile-pass
 * @section 7.27.6
 * @design 同枚举类型（string 基类型）关系比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
enum Status { OK = "ok", ERROR = "error" }
function testEnumStringCmp(): void {
  let a: Status = Status.OK; let b: Status = Status.ERROR
  let r: boolean = a < b
  console.log(r.toString())
}
