/*
 * @id SEM_15_12_031_PASS_ARCHIVE_generic_class_method_equivalent_textual_order
 * @expect compile-pass
 * @section 15.12
 * @design 归档吸纳：generic class method equivalent textual order。来源 `Overloading\compile-pass\OVERLOAD_PASS_016_generic_class_method_equivalent_textual_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_016_generic_class_method_equivalent_textual_order.ets
 */

class OverloadPass016Box<T> {
  foo(p: T): string {
    return 'generic'
  }

  foo(p: int): string {
    return 'plain'
  }

  bar(p: int): string {
    return 'plain'
  }

  bar(p: T): string {
    return 'generic'
  }
}

function main(): void {
  let box: OverloadPass016Box<int> = new OverloadPass016Box<int>()
  arktest.assertEQ(box.foo(16), 'generic')
  arktest.assertEQ(box.bar(16), 'plain')
}
