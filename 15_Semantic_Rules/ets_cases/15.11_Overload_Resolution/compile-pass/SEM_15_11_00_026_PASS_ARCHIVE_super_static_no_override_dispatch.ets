/*
 * @id SEM_15_11_00_026_PASS_ARCHIVE_super_static_no_override_dispatch
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：super static no override dispatch。来源 `Overloading\compile-pass\OVERLOAD_PASS_024_super_static_no_override_dispatch.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_024_super_static_no_override_dispatch.ets
 */

class OverloadPass024A {
  foo(): string {
    return 'A.foo'
  }

  static stat(): string {
    return 'A.stat'
  }
}

class OverloadPass024B extends OverloadPass024A {
  override foo(): string {
    return 'B.foo'
  }

  callSuper(): string {
    return super.foo()
  }

  static stat(): string {
    return 'B.stat'
  }
}

class OverloadPass024C extends OverloadPass024B {
  override foo(): string {
    return 'C.foo'
  }
}

function main(): void {
  let c: OverloadPass024C = new OverloadPass024C()
  arktest.assertEQ(c.foo(), 'C.foo')
  arktest.assertEQ(c.callSuper(), 'A.foo')
  arktest.assertEQ(OverloadPass024A.stat(), 'A.stat')
  arktest.assertEQ(OverloadPass024B.stat(), 'B.stat')
}
