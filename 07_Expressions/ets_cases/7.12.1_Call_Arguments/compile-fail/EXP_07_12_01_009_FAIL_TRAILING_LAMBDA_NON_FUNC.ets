/**
 * @id EXP_07_12_01_009_FAIL_TRAILING_LAMBDA_NON_FUNC
 * @expect compile-fail
 * @section 7.12.1
 * @design 验证 trailing lambda 最后参数必须为函数类型
 * @note 反向用例：最后参数不是函数类型时用 trailing lambda 应报编译时错误
 *       spec 规定："A compile-time error occurs if the last parameter of the called
 *       entity is not of a function type."（见 experimental.md Trailing Lambdas）
 */
function greet(msg: string): void {
  let s: string = msg;
}

function main(): void {
  greet() {
    let x: int = 1;
  }
}
