/**
 * @id ERR_12_01_008_PASS_HANDLE_ALL_CALLBACKS
 * @expect compile-pass
 * @section 12.1
 * @design handleAll 模式：函数参数中执行 actions 并在 catch 中处理 Error
 * @note 正向用例：覆盖 spec 中 handleAll 示例结构
 */
function handleAll(actions: () => void, handlingActions: () => void): void {
  try {
    actions()
  } catch (x) {
    handlingActions()
  }
}
