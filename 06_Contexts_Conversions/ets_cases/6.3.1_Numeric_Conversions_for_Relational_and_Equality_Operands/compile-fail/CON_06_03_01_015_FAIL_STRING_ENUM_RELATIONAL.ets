/**
 * @id CON_06_03_01_015_FAIL_STRING_ENUM_RELATIONAL
 * @expect compile-fail
 * @section 6.3.1
 * @design string枚举不能在numeric context中进行关系运算
 * @note 反向用例：原文件错测boolean<=long，已修正为string enum <
 *       D类: 编译器实际允许string enum <比较，违反spec §6.3
 */
enum StringEnum015 { A = "hello", B = "world" }
function testStringEnumRelationalFail(): void {
  let r: boolean = StringEnum015.A < StringEnum015.B
}
