/**
 * @id EXP_07_32_01_011_RUNTIME_RANGEERROR_NEGATIVE
 * @expect runtime
 * @runtime-throws=RangeError
 * @section 7.32.1
 * @design 验证数组索引为负值时抛出 RangeError：使用函数返回负值作索引，arr[negOne()] = value 应抛 RangeError
 * @note 运行时异常用例：不直接使用字面量负值（编译器会静态捕获），而是通过函数调用返回负值来测试运行时 RangeError
 */

function negOne(): int {
  return -1;
}

function main(): void {
  let arr: int[] = [1, 2, 3];
  arr[negOne()] = 99;  // 应抛出 RangeError（通过函数调用返回 -1 绕过编译期检测）
  console.log("unreachable");
}
