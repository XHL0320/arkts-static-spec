/**
 * @id CON_06_04_04_004_PASS_STRING_ENUM_IN_RETURN
 * @expect compile-pass
 * @section 6.4.4
 * @design string 枚举在返回上下文中: return string-enum→string
 * @note 正向用例：string 枚举作返回值
 */
enum Tag { Open = "open", Close = "close" }

function retEnumAsString(): string { let e: Tag = Tag.Open; return e }
function retEnumAsUnion(): string | int { let e: Tag = Tag.Close; return e }

function testStringEnumInReturn(): void {
  let s: string = retEnumAsString()
  let u: string | int = retEnumAsUnion()
}
