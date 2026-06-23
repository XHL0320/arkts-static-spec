/**
 * @id EXP_07_12_01_007_PASS_TRAILING_LAMBDA
 * @expect compile-pass
 * @section 7.12.1
 * @design 验证 trailing lambda：callArguments 中 trailingLambda? 可选语法
 * @note 正向用例：func(param) { body } 中最后参数为函数类型，trailing lambda 语法合法
 *       注意：trailing lambda 是实验特性，详见 spec/experimental.md
 */
function execute(f: () => void): void {
  f();
}

function main(): void {
  let invoked: boolean = false;
  execute() {
    invoked = true;
  }
}
