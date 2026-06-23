/**
 * @id EXP_07_02_03_006_PASS_FUNC_ARGS_LEFT_RIGHT
 * @expect compile-pass
 * @section 7.2.3
 * @design 验证函数参数从左到右求值编译通过：先左后右
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function track(s: string): int {
  return 1;
}

function add3(a: int, b: int, c: int): int {
  return a + b + c;
}

function main(): void {
  let r: int = add3(track("left"), track("middle"), track("right"));
  console.log("" + r);
}
