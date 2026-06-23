/**
 * @id EXP_07_03_003_PASS_STRING_BOOL_NULL
 * @expect compile-pass
 * @section 7.3
 * @design 验证字符串、布尔、null、undefined 字面量编译通过
 * @note 正向用例：验证非数值字面量作为表达式的基本编译通过用法
 */
function main(): void {
  let s1: string = "Hello"
  let s2: string = 'World'
  let s3: string = ""
  let s4: string = "line1\nline2"
  let s5: string = "tab\there"
  let s6: string = "unicodeA"
  let s7: string = "hex\xFF"
  let b1: boolean = true
  let b2: boolean = false
  let n: null = null
  let u: undefined = undefined
  console.log("verified")
}
