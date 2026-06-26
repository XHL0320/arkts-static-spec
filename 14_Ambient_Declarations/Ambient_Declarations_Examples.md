# 14 Ambient Declarations Examples

## 14.1 Ambient Constant or Variable Declarations

**合法：** 显式类型注解，无初始化器
```typescript
declare let v1: int           // OK
declare let v2: string         // OK
declare const c1: number       // OK
declare let a: int, b: string  // OK (多声明)
```

**非法：** 有初始化器或无类型注解（spec 要求 compile-time error）
```typescript
declare let v = 1              // Compile-time error
declare const c = 1            // Compile-time error
declare let v                  // Compile-time error
declare const c                // Compile-time error
```

## 14.2 Ambient Function Declarations

**合法：** 显式返回类型，无函数体，无默认值参数，无 async
```typescript
declare function foo(x: int): void       // OK
declare function bar(x: int, y: string): boolean  // OK
declare function baz(x?: string): void   // OK (可选参数)
declare function empty(): int            // OK
```

**非法：** 缺少返回类型/默认值/函数体/async（compile-time error）
```typescript
declare function bad1(x: number)         // Compile-time error, no return type
declare function bad2(y: number = 1): void // Compile-time error, default param
declare function bad3(): void {}         // Compile-time error, function body
declare async function bad4(): void      // Compile-time error, async modifier
```

## 14.3 Ambient Overload Function Declarations

**合法：** declare overload 声明一组重载函数
```typescript
declare function foo1(p: string): void    // OK
declare function foo2(p: number): void    // OK
declare overload foo {foo1, foo2}         // OK, explicit overload

declare namespace N {
  function fn1(p: string): void
  function fn2(p: number): void
  overload fn {fn1, fn2}                  // OK, namespace overload
}
```

**非法：** 引用未定义函数/空重载集/等价签名（compile-time error）
```typescript
declare overload foo {nonexistent}        // Compile-time error
declare overload bar {}                   // Compile-time error
```

## 14.4.1 Ambient Indexer

在 declare class 内部定义索引签名
```typescript
declare class C {
  [index: number]: number                // OK
}
declare class D {
  readonly [index: string]: string       // OK (readonly)
}
```
