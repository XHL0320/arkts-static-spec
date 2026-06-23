/**
 * @id EXP2_17_16_001_PASS_INSTANCEOF_STRING
 * @expect compile-pass
 * @section 17.16
 * @design 使用 instanceof 进行类型测试——Object 变量检查是否为 String 类型
 * @note 正向用例：验证 instanceof 用于基本类型测试编译通过。ArkTS 不支持 is 运算符，须使用 instanceof。
 */
function testInstanceofString(): void {
  let obj: Object = "hello"
  let isStr: boolean = obj instanceof String
  console.log("instanceof result: " + isStr)
}
