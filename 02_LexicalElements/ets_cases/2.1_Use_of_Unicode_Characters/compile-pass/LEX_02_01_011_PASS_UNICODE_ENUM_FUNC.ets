/**
 * @id LEX_02_01_011_PASS_UNICODE_ENUM_FUNC
 * @expect compile-pass
 * @section 2.1
 * @design Unicode枚举成员名、函数名、参数名 * @note 正向用例：验证该特性编译通过的正确用法

 */
enum 方向 {
  北,
  南,
  东,
  西
}

function 加(a: number, b: number): number {
  return a + b
}

function greet(名字: string): string {
  return "Hello " + 名字
}

function testUnicodeEnumFunc(): void {
  let d: 方向 = 方向.北
  let r: number = 加(3, 4)
  let g: string = greet("世界")
}
