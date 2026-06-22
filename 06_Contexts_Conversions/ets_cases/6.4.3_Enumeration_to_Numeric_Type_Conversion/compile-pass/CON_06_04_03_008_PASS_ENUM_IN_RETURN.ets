/**
 * @id CON_06_04_03_008_PASS_ENUM_IN_RETURN
 * @expect compile-pass
 * @section 6.4.3
 * @design 枚举在返回上下文中: return enum→int/long/double
 * @note 正向用例：枚举作为返回值的转换
 */
enum E3 { X, Y, Z }

function retEnumAsInt(): int { let e: E3 = E3.Y; return e }
function retEnumAsLong(): long { let e: E3 = E3.Z; return e }
function retEnumAsDouble(): double { let e: E3 = E3.X; return e }

function testEnumInReturn(): void {
  let a: int = retEnumAsInt()
  let b: long = retEnumAsLong()
  let c: double = retEnumAsDouble()
}
