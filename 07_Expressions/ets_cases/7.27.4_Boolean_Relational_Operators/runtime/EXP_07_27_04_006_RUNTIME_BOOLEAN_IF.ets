/**
 * @id EXP_07_27_04_006_RUNTIME_BOOLEAN_IF
 * @expect runtime
 * @section 7.27.4
 * @design 布尔关系在控制流中使用

 * @note 运行时用例：实际执行验证布尔关系控制流
 */
function main(): void {
  let flag: boolean = false
  if (flag < true) { console.log("false < true in if")
  }
  let val: boolean = true > false
  if (val) { console.log("true > false is truthy")
  }
  console.log("verified")
}
