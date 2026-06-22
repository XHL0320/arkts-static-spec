/**
 * @id ERR_12_01_005_RUNTIME_CATCH_TYPE_ERROR
 * @expect runtime
 * @section 12.1
 * @design catch(x) 中 x 类型为 Error
 * @note 运行时用例
 */
function main(): void {
  try {
    throw new Error("test")
  } catch (x) {
    if (!(x instanceof Error)) {
      throw new Error("catch type should be Error")
    }
  }
  console.log("catch type is Error verified")
}