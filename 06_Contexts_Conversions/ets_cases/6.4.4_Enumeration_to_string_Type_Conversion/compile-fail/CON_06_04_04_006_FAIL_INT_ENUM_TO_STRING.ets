/**
 * @id CON_06_04_04_006_FAIL_INT_ENUM_TO_STRING
 * @expect compile-fail
 * @section 6.4.4
 * @design int 基类型枚举→string: 非 string 基类型无此转换，应编译失败
 * @note 反向用例：int 枚举不能直接转为 string
 */
enum IntEnum { A, B, C }

function testIntEnumToStringFail(): void {
  let e: IntEnum = IntEnum.A
  let s: string = e
}
