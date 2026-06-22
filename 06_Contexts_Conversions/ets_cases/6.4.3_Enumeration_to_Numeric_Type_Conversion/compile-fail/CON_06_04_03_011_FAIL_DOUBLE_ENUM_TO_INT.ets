/**
 * @id CON_06_04_03_011_FAIL_DOUBLE_ENUM_TO_INT
 * @expect compile-fail
 * @section 6.4.3
 * @design double 基类型枚举→int (不兼容类型), 应编译失败
 * @note 反向用例：double 枚举不能转为 int
 */
enum DoubleE: double { a = 1.0, b = 2.0 }

function testDoubleEnumToIntFail(): void {
  let e: DoubleE = DoubleE.a
  let v: int = e
}
