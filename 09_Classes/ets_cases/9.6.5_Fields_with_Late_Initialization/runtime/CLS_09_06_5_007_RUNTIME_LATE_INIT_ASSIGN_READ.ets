/**
 * @id CLS_09_06_5_007_RUNTIME_LATE_INIT_ASSIGN_READ
 * @expect runtime
 * @section 9.6.5
 * @design late init字段赋值后读取运行时验�?
 * @note 运行时用例：验证late init字段在赋值后可正常读�?
 */
class LateInitRt {
  val!: string
}
function main(): void {
  let li = new LateInitRt()
  li.val = "assigned"
  if (li.val != "assigned") { throw new Error("li.val should be 'assigned'") }
  console.log("Late init assign read verified")
}
