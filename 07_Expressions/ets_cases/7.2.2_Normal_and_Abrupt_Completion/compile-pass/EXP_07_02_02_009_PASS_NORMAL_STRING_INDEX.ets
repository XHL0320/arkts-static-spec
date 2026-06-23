/**
 * @id EXP_07_02_02_009_PASS_NORMAL_STRING_INDEX
 * @expect compile-pass
 * @section 7.2.2
 * @design 验证字符串索引正常完成：有效索引范围无 RangeError
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let s: string = "hello";
  let c1: string = s[0];
  let c2: string = s[4];
  let len: int = s.length;
  if (len > 0) {
    let last: string = s[len - 1];
    console.log("" + c1 + c2 + last);
  }
}
