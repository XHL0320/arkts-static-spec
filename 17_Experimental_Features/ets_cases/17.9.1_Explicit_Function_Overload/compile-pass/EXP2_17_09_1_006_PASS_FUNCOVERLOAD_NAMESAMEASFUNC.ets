/**
 * @id EXP2_17_09_1_006_PASS_FUNCOVERLOAD_NAMESAMEASFUNC
 * @expect compile-pass
 * @section 17.9.1
 * @design overload 名与某个重载函数同名（该函数在列表中）
 * @note 正向用例：overload 名可以等于列表中的函数名
 */
function process(a: int): int {
  return a * 2
}
function processStr(a: string): string {
  return a + "!"
}
// overload 名 "process" 与函数 "process" 同名，且 process 在列表中
overload process { process, processStr }
