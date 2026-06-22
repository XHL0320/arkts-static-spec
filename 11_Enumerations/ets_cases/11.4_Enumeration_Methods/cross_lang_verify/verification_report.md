# 11.4 Enumeration Methods - Java & Swift 实测

## Java 实测

```text
PASS java values() length
PASS java valueOf
PASS java name()
PASS java toString
PASS java ordinal
PASS java fromValue analog error
PASS Java has no fromValue or getName built-in N/A
SUMMARY pass=7 fail=0
```

## Swift 实测

```text
PASS swift allCases length
PASS swift String(describing:) analog to getName
PASS Swift has no fromValue/getValueOf/values built-in N/A
SUMMARY pass=3 fail=0
```

ArkTS 的 `fromValue`、`getName`、`Color[c]` 索引、同值后优先是独有特性。