/**
 * @id EXP2_17_9_4_012_RUNTIME_NAMECONFLICT_AMBIGUITY_RESOLVE
 * @expect runtime
 * @section 17.9.4
 * @design 运行时验证 overload 名冲突时的消解行为
 * @note 运行时用例：验证存在同名方法时编译器按 overload 列表顺序消解
 */
class Worker {
  workInt(x: int): string { return "int-task:" + x.toString() }
  workStr(x: string): string { return "str-task:" + x }
  overload work { workInt, workStr }
}

function main(): void {
  let w: Worker = new Worker()
  let r1: string = w.work(1)
  let r2: string = w.work("test")
  console.log(r1 + "|" + r2)
}
