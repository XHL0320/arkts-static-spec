/**
 * @id EXP_07_32_03_021_FAIL_READONLY_FIELD_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证 readonly 字段/数组元素不能作为左值：readonly 字段的访问表达式不可出现在赋值左侧，readonly 数组元素也不可赋值
 * @note 反向用例：Spec 明确禁止引用 readonly 实体的表达式作为左值，应产生 compile-time error
 */

class Data {
  readonly id: int = 1;
}

function main(): void {
  // readonly 字段作为左值（应报错）
  let d: Data = new Data();
  d.id = 99;

  console.log("done");
}
