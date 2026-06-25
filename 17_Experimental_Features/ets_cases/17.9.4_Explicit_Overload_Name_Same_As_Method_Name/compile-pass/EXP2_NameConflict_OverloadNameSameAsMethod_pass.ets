/**
 * @id EXP2_NameConflict_OverloadNameSameAsMethod_pass
 * @expect compile-pass
 * @section 17.9.4
 * @design overload 名与某个方法名相同（该方法在列表中）
 * @note 正向用例：overload 名与方法同名且该方法在列表中
 */
class Worker {
  process(a: int): string { return "int:" + a }
  processStr(a: string): string { return "str:" + a }
  // overload 名 "process" 与方法 "process" 同名，process 在列表中
  overload process { process, processStr }
}
