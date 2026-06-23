/**
 * @id EXP_07_02_02_004_PASS_NORMAL_CAST
 * @expect compile-pass
 * @section 7.2.2
 * @design 验证类型转换正常完成：子类转父类或兼容类型的 as 表达式无 ClassCastError
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let x: int = 42;
  let y: double = x.toDouble();
  let s: String = "hello";
  let obj: Object = s as Object;
  console.log("" + y);
}
