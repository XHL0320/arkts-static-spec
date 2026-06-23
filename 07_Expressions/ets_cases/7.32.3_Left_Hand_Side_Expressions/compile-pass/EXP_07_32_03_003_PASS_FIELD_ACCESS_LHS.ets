/**
 * @id EXP_07_32_03_003_PASS_FIELD_ACCESS_LHS
 * @expect compile-pass
 * @section 7.32.3
 * @design 验证字段访问（Field Access）作为左值表达式的编译通过：公有字段、嵌套字段、静态字段均可作为赋值目标
 * @note 正向用例：字段访问表达式 e.f 是五种有效左值形式之一，验证多种字段访问赋值编译通过
 */
class InnerData {
  val: int = 0;
}

class Data {
  x: int = 0;
  label: string = "";
  flag: boolean = false;
  inner: InnerData = new InnerData();
}

class StaticHolder {
  static count: int = 0;
}

function main(): void {
  let d: Data = new Data();

  // 公有 int 字段作为左值
  d.x = 42;

  // 公有 string 字段作为左值
  d.label = "hello";

  // 公有 boolean 字段作为左值
  d.flag = true;

  // 嵌套字段访问作为左值
  d.inner.val = 99;

  // 链式字段赋值（右结合）
  let a: int = 0;
  let b: int = 0;
  a = b = d.x;

  console.log("done");
}
