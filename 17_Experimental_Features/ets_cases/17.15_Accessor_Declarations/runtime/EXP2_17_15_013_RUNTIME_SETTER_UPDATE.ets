/**
 * @id EXP2_17_15_013_RUNTIME_SETTER_UPDATE
 * @expect runtime
 * @section 17.15
 * @design 验证 setter 正确更新 backing 变量状态
 * @note 运行时用例：setter 赋值应修改 backing 变量值
 */
let g_stored: int = 0

set storeValue(v: int) {
  g_stored = v
}

function main(): void {
  g_stored = 0
  storeValue = 100
  if (g_stored != 100) {
    throw new Error("assertion failed: expected 100, got " + g_stored)
  }
  console.log("verified: setter stored " + g_stored)
}
