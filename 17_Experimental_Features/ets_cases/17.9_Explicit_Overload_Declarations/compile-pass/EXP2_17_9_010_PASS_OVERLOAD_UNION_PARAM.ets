/**
 * @id EXP2_17_9_010_PASS_OVERLOAD_UNION_PARAM
 * @expect compile-pass
 * @section 17.9
 * @design 验证 overload 集中各签名使用联合类型参数编译通过
 * @note 正向用例：overload 函数可使用不同的参数类型（包括联合类型）
 */
function procInt(v: int): string { return "int" }
function procStr(v: string): string { return "string" }
overload process { procInt, procStr }

function main(): void {
  let r: string = process(42)
  console.log(r)
}

