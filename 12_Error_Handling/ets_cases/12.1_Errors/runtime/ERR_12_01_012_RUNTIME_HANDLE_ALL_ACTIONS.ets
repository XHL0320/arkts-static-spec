/**
 * @id ERR_12_01_012_RUNTIME_HANDLE_ALL_ACTIONS
 * @expect runtime
 * @section 12.1
 * @design handleAll 捕获 actions 抛出的 Error 并执行 handlingActions
 * @note 运行时用例：验证 catch 中处理动作执行
 */
let handled: boolean = false
function actionThrows(): void {
  throw new Error()
}
function handlingAction(): void {
  handled = true
}
function handleAll(actions: () => void, handlingActions: () => void): void {
  try {
    actions()
  } catch (x) {
    handlingActions()
  }
}
function main(): void {
  handleAll(actionThrows, handlingAction)
  if (!handled) throw new Error("handling action should execute")
  console.log("handleAll verified")
}
