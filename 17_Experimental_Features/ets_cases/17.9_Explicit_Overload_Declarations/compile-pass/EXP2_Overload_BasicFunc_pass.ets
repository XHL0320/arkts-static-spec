/**
 * @id EXP2_Overload_BasicFunc_pass
 * @expect compile-pass
 * @section 17.9
 * @design 基本 overload 函数声明 — 编译时多态
 * @note 正向用例：overload 声明按名称解析，第一个匹配签名的候选胜出
 */
function processInt(a: int): string { return "int:" + a }
function processStr(a: string): string { return "str:" + a }
overload process { processInt, processStr }
