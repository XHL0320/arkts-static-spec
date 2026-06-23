/**
 * @id EXP_07_14_007_PASS_NESTED_CHAINING
 * @expect compile-pass
 * @section 7.14
 * @design 验证多层嵌套链式操作符：a?.b?.c?.d 编译通过
 * @note 正向用例：嵌套 ?. 链式访问，编译通过
 */
class Inner {
  value: int = 42;
}

class Middle {
  inner?: Inner = undefined;
}

class Outer {
  middle?: Middle = undefined;
}

function main(): void {
  let o: Outer | undefined = new Outer();
  let v: int | undefined = o?.middle?.inner?.value;
}
