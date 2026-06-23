/**
 * @id EXP2_17_14_010_FAIL_OPTIONAL_BEFORE_TRAILING
 * @expect compile-fail
 * @section 17.14
 * @design 函数类型参数前有可选参数，可选参数在函数类型参数前时 spec 允许跳过
 *        但 ArkTS 编译器不允许必选参数出现在可选参数之后
 * @note 反向用例：spec 17.14 规定 "Optional params before function type param → skipped args default to undefined"
 *       ⚠️ SPEC 不一致：spec 允许可选参数在函数类型参数前，但编译器报 ESY0219: A required parameter cannot follow an optional parameter
 *       分类：D 类（Spec 与实现不一致）
 *       编译器实际报错，保留此 FAIL 用例
 */
function processWithOptional(prefix: string, optionalSuffix?: string, callback: () => void): void {
  console.log(prefix)
  if (optionalSuffix != undefined) {
    console.log(optionalSuffix)
  }
  callback()
}

processWithOptional("hello") { console.log("trailing with optional skipped") }
