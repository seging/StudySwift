## 문제

정수 X에 사용할 수 있는 연산은 다음과 같이 세 가지 이다.

1. X가 3으로 나누어 떨어지면, 3으로 나눈다.
2. X가 2로 나누어 떨어지면, 2로 나눈다.
3. 1을 뺀다.

정수 N이 주어졌을 때, 위와 같은 연산 세 개를 적절히 사용해서 1을 만들려고 한다. 연산을 사용하는 횟수의 최솟값을 출력하시오.

## 입력

첫째 줄에 1보다 크거나 같고, 106보다 작거나 같은 정수 N이 주어진다.

## 출력

첫째 줄에 연산을 하는 횟수의 최솟값을 출력한다.

## 예제 입력 1 복사

```
2
```

## 예제 출력 1 복사

```
1
```

## 예제 입력 2 복사

```
10
```

## 예제 출력 2 복사

```
3
```

## 힌트

10의 경우에 10 -> 9 -> 3 -> 1 로 3번 만에 만들 수 있다.

## 출처

- 문제를 번역한 사람: [baekjoon](https://www.acmicpc.net/user/baekjoon)
- 문제의 오타를 찾은 사람: [cyj101366](https://www.acmicpc.net/user/cyj101366) [jugol](https://www.acmicpc.net/user/jugol)
- 어색한 표현을 찾은 사람: [dbfldkfdbgml](https://www.acmicpc.net/user/dbfldkfdbgml)
- 데이터를 추가한 사람: [dynamiseus](https://www.acmicpc.net/user/dynamiseus)

## 알고리즘 분류

- [다이나믹 프로그래밍](https://www.acmicpc.net/problem/tag/다이나믹 프로그래밍)