# 12 Error Handling Test Design Mindmap

## 覆盖汇总

- 总用例数：12（5P + 3F + 4R）
- 覆盖章节：12.1 Errors

## 12.1 Errors

- compile-pass
  - throw Error 实例
  - 自定义 Error 子类
  - try-catch 捕获结构
  - RangeError 作为 Error 子类处理
  - handleAll(actions, handlingActions) 回调处理模式
- compile-fail
  - throw number/string 非 Error 类型
  - throw null / undefined
  - throw 普通对象非 Error 子类
- runtime
  - RangeError 越界捕获并返回 undefined
  - catch 参数作为 Error 使用
  - UnknownError 包装未知 Error
  - handleAll 捕获 action 抛出的 Error 并执行 handling action
