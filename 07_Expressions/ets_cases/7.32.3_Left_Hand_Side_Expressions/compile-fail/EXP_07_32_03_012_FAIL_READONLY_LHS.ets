/**
 * @id EXP_07_32_03_012_FAIL_READONLY_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证只读实体（readonly）不能作为左值：const 常量、readonly 字段不可出现在赋值左侧
 * @note 反向用例：Spec 明确禁止引用 readonly 实体的表达式作为左值，应产生 compile-time error
 */

class Data {
  readonly id: int = 1;
}

function main(): void {
  // 常量作为左值（应报错）
  const c: int = 42;
  c = 99;

  console.log("done");
}
