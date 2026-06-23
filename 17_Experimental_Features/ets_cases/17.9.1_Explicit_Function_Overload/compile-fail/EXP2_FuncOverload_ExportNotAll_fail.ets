/**
 * @id EXP2_17_09_01_010_FAIL_EXPORT_NOT_ALL
 * @expect compile-fail
 * @section 17.9.1
 * @design 导出 overload 但某个重载函数未导出 — 编译错误
 * @note 反向用例：部分函数未导出
 */
export function fExported(a: int): int { return a }
function fNotExported(a: string): string { return a }
export overload fmt { fExported, fNotExported }
