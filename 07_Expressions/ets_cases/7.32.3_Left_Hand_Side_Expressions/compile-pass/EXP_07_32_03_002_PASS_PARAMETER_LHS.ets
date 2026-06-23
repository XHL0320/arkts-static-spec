/**
 * @id EXP_07_32_03_002_PASS_PARAMETER_LHS
 * @expect compile-pass
 * @section 7.32.3
 * @design 验证参数（Parameter，除 this 外）作为左值表达式的编译通过：函数参数、方法参数均可作为赋值目标
 * @note 正向用例：参数是五种有效左值形式之一（除 this 参数外），验证参数重新赋值编译通过
 */

// 全局变量存储测试结果
let resultVal: int = 0;

function testFuncParam(x: int): int {
  // 参数 x 作为左值
  x = 99;
  resultVal = x;
  return x;
}

class TestClass {
  testMethodParam(s: string): string {
    // 方法参数 s 作为左值
    s = "modified";
    return s;
  }
}

function main(): void {
  // 函数参数作为左值
  let a: int = testFuncParam(10);
  if (a != 99 || resultVal != 99) {
    // verify via function return
  }

  // 方法参数作为左值
  let obj: TestClass = new TestClass();
  let r: string = obj.testMethodParam("original");
  if (r != "modified") {
    // verify via method return
  }

  console.log("done");
}
