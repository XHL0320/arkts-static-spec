/**
 * @id EXP2_17_09_01_004_PASS_EXPORT
 * @expect compile-pass
 * @section 17.9.1
 * @design 导出 overload：所有重载函数必须导出
 * @note 正向用例：所有重载函数和 overload 声明都导出
 */
export function fInt(a: int): string { return "int:" + a }
export function fStr(a: string): string { return "str:" + a }
export function fBool(a: boolean): string { return "bool:" + a }
export overload fmt { fInt, fStr, fBool }
