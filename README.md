# study_repo


# 알고리즘

💡 `문제를 해결하기 위한 절차 혹은 방법` or `어떠한 일을 수행하기 위한 단계적인 방법`

> 표현 방법
> 
- 의사코드
- 순서도

> 좋은 알고리즘 ❓
> 
1. 정확성 : 얼마나 정확하게 동작하는가❔ 🌟🌟🌟🌟
2. 작업량 : 얼마나 적은 연산으로 원하는 결과를  얻어내는가❔🌟🌟🌟 
3. 메모리 사용량 : 얼마나 적은 메모리를 사용하는가❔🌟🌟🌟
4. 단순성 : 얼마나 단순하가❔
5. 최적성 : 더 이상 개선할 여지없이 최적화되었는가❔시

> 시간복잡도 VS 공간복잡도
> 

🔆 시간복잡도 : 연산의 작업량, 수행시간

- 최선의 경우 ( Best )
- 최악의 경우 ( Worst )
    - 빅 오 표기법 사용 ( $O(n)$ )
- 평균적인 경우 ( Average )

☀️ 공간복잡도 :  메모리 사용량

> 반복 VS 재귀
> 

🔆 반복과 재귀는 유사한 작업을 수행할 수 있다.

- 반복문
    - 수행하는 작업이 완료될 때까지 계속!!
    
    ```/plantuml
     // 루프 ( for문 / while문 , ( do ~ while ) ) 사용
    
    // ********** 를 콘솔에 출력하시오.
    for( int i = 0; i < 10; i++ ) {
    	System.out.print("*");
    }
    ```
    
- 재귀
    - “자신을 통해서 자신을 정의한다.!!”
    - 주어진 문제의 해를  구하기 위해 동일하면서 더 작은 문제의 해를 이용하는 방법
    - `함수 내부`에서 직접 혹은 간접적으로 `자기 자신을 호출`하는 함수
    
    ---
    ```
    💡 Tip 💡
    
    1. 함수에 대한 정의를 명확히 해라!! ( what =⇒ 문제를 명확히 정의 )
    2. “Flat” 하게 보아라!! ( 평평하게 로직을 바라보기 )
        
        ⇒ 일단 먼저 처리해야 하는 일을 정의해서 차근차근!!
        
    3. 재귀를 실행을 결정하는 요인(값)은 매개변수로 설정해준다.!!
    ```
    ### 시간적으로 보는 재귀 함수!!
    ![recursive_function](https://user-images.githubusercontent.com/87114676/206410106-e73c7073-a048-4e52-87e7-c2e791c797dc.png)
     ----

    ```
     ❗❗ 주의사항 ❗❗
    
     1. 참조함수 호출은 프로그램 메모리 구조에서 `스택` 을 사용함!!
     2. 재귀호출은 반복적으로 스택의 사용을 의미 ⇒ 메모리 및 속도에서 `성능저하`가 발생한다.
    
     🗯️반드시 기저조건(종료부분)이 존재해야한다. 🗯️
    ```

  🔒 팩토리얼 ⇒ 자신보다 작은 모든 양의 정수들의 곱

> 재귀를 연습하자
>
1. 1차원 배열의 모든 원소 출력을 재귀로 작성해보자.
2. n개 중 k개를 뽑는 조합의 경우의 수 계산을 재귀로 작성해보자

> 재귀가 좋을까❓ 반복문이 좋을까❓
>

🗨️ 어느것이 좋은것은 없다. 반복문으로도 해결이 가능하다.

단, 추상 자료형( List, Tree 등 ) 의 알고리즘 설계를 할 때는 재귀로 하는 것이 자연스러운 경우가 많다.!!

❗재귀로 구현을 하면 `함수호출을 하는 것이기 때문에 스택을 많이 사용하게 된다.` 즉, 메모리를 반복문에 비해서 비교적 많이 사용한다는 점을 기억하자.

|  | 재귀 | 반복 |
| --- | --- | --- |
| 종료 | 재귀 함수 호출이 종료되는 베이스 케이스(base case) ⇒ 기저조건 충족 시 | 반복문의 종료 조건 충족 시 |
| 수행 시간 | (상대적) 느림 | 빠름 |
| 메모리 공간 | (상대적) 많이 사용  | 적게 사용 |
| 소스 코드 길이 | 짧고 간결 | 길다, 복잡 |
| 소스 코드 형태 | 선택 구조 | 반복 구조 |
| 무한 반복시 | 스택 오버플로우 | CPU를 반복해서 점유( 무한 루프 ) |

💡 반복문을 재귀로 바꾸는 연습을 많이 하면 좋을 것 같다. ( 강사님 의견 )

> 피보나치 수열
>

🗨️ 이전 두 수의 합이 다음 항으로 하는 수열

- $F(n) = F(n-1) + F(n-2)$ 관계가 성립하는 수

![Fibonaci drawio](https://user-images.githubusercontent.com/87114676/206477250-041ce0b9-fb02-47ee-be9b-d15a9a4be597.png)

위와 같이 피보나치 수를 구하는 함수를 재귀를 돌리게 되면 `중복 호출` 이 발생하는 문제가 생긴다.
그렇게되면 `메모리` 와 `속도` 측면에서 기하급수적으로 커져서 문제를 해결할 수 없다.

그런 문제를 해결하기 위한 방법으로 대표적으로 `메모이제이션(Memoization)` 이 있다.

❗중복 호출이 생긴다면 `메모이제이션` 같은 방법을 생각하자!!

## 2. 경우의 수

```
💡 순서와 조합의 차이 💡

순열 : 순서에 영향을 받음

조합 : 순서에 영향을 받지않음
```

### 순열( Permutation )

- 서로 다른 것들 중 몇 개를 뽑아서 한 줄로 나열하는 것
- 서로 다른 n개 중 r개를 택하는 순열을 아래와 같이 표현한다.
  - $nPr$ 로 표현한다.
- 그리고 $nPr$ 은 다음과 같은 식이 성립한다.
  - $nPr = n * (n-1) * (n - 2) ... (n  - r + 1 )$
- $nPn = n!$ 라고 표기하거나 Factorial 이라고 부른다.

> 순열의 예시
>
- 1 ~ 9 까지 수 중에서 3개를 뽑는 순열을 구하시오.
  - 숫자를 하나씩 뽑는다. ( 단. 뽑은 수는 다시 뽑을 수 없다. ⇒ 중복 불가 )
    1. 반복문을 이용

        ```plantuml
        for ( int i = 1; i <= 9; i++ ) {
                // 첫번째 수 선택
            for ( int j = 1; j <= 9; j++ ) {
                    // 두번째 수 선택
                for ( int k = 1; k <= 9; k++ ) {
                        // 세번째 수 선택
                }
            }
        }
        ```

       위와 같이 loop( for문 ) 사용할 수 있지만 뽑아야 하는 수가 정해져 있기 때문에 사용 가능한 방법!!

       만약에 뽑아야 하는 경우의 수가 주어지지 않았을 경우에는 사용이 힘들다…

       그리고 for문이 많아져서 관리가 힘들고 가독성이 떨어진다.

    2. 재귀를 이용

       뽑는 횟수가 `가변적일 경우`에는 재귀를 사용해야한다.

       1. 주어진 요소에서 1개를 선택하는 함수를 만들어준다.
       2. 숫자를 선택하였다면 다음 재귀를 호출해서 다음 숫자를 선택한다.
       3. 기저조건(종료) 충족하면 선택하지 않고 `return` 한다.

        ```plantuml
        // 순열을 저장할 자료구조 선언
        numbers[]
        // 주어진 요소를 사용중(선택)인지 확인할 boolean 배열을 선언
        // 선택하지 않았다면 false
        isSelected[]
        
        // 숫자를 선택하는 함수
        // cnt <= 선택하는 자릿수(순서)
        perm( int cnt ) {
            
            // 기저조건 ( 선택하는 자릿수 만큼 이미 선택하였다면 종료 )
            if( cnt == r ) return;
        
            // 수를 선택
            for( int i = 1; i <= 9; i++) {
                // 사용중이라면 다음 숫자를 선택
                if isSelected[i] == true then continue;
                // 사용하는 숫자라는 표시
                isSelected[i] <- true;
                // 해당 숫자를 선택하였다면 해당 자리에 저장
                numbers[cnt] <- i;
                // 다음 숫자를 선택
                perm( cnt + 1 )
                // 사용을 다 했다면 사용하지 않는다고 표시
                isSelected[i] <- false;
            }
        }
        ```

### 조합 ( **Combination )**

- 서로 다른 n개들 중  순서 상관없이 r개를 뽑는 경우의 수
- 서로 다른 n개 중 순서에 상관없이 r개를 선택하는 조합은 아래와 같이 표기한다.
    - $nCr$로 표현한다.
- $nCr = n-1Cr-1 + n-1Cr$

  [https://viewer.diagrams.net/?border=0&tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&open=G1zCbEDYPHbvFpKMBae7U-FitFJ7rWGtbS](https://viewer.diagrams.net/?border=0&tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&open=G1zCbEDYPHbvFpKMBae7U-FitFJ7rWGtbS)

- 수학적 공식

  $nCr = \frac{n!}{(n-r)! * r!}$ ( n ≥ r )


> 조합의 예시
>
- n개의 요소에서 r개를 뽑는 경우
    1. 앞에서 1을 선택하면 뒤에서 1을 선택할 수 없는 건 순열과 동일하다.
       하지만 순열과 다르게 순서가 의미가 없기 때문에

       `1, 2, 3` 과 `2, 1, 3` 과 `2, 3, 1` 세 가지 모두 동일한 경우로 처리한다.

    2. 앞에서 선택한 수는 뒤에서 선택할 수 없도록 처리해야한다.!!
    - 반복문 이용 ( 만약 3개를 뽑아야 한다고 가정해보았다. )

        ```plantuml
        for i from 1 to 4
        	for j from i + 1 to 4
        		for k from j + 1 to 4
        			// 최종적으로 조합을 출력
        		end for
        	end for
        end for
        ```

    - 재귀 이용

      위 순열에서 전에 선택한 수를 선택하지 못 하도록 하기 위해서 체크를 해주는 배열을 만들어 주었다.
      조합에서는 앞에서 사용한 수는 다시 사용할 일이 없기 때문에
      체크를 해주는 배열을 없애주고, 시작 수를 알려주는 매개변수를 추가해주면 된다.!!

        ```plantuml
        numbers[] // 조합이 저장될 배열
        
        combi( int cnt, int start ) {
        	
        	// 기저조건 ( 종료 )
        	if( cnt == r ) return;
        
        	// 선택 코드
        	for i from start to N
        		numbers[cnt] <- i;
        		// 앞에서 사용된 수는 사용하면 안되기 때문에
        		// 선택한 수 다음을 산택할 수 있도록 i+1을 매개변수로 전달해준다.
        		combi( cnt + 1, i + 1);
        }
        ```


위에서 `순열` 과 `조합` 을 보았습니다. 각 예시를 보면서 간단하게 구현하여도 보았지만 중요한 점을 정리하면
아래와 같이 정리할 수 있을  것이다.!!

---
1. 순열과 조합의 차이
   1. 순서의 영향을 받는다 ⇒ 순열
   2. 순서의 영향을 받지 않는다. ⇒ 조합
2. 고정적으로 뽑아야하는 갯수를 주어질 경우 `반복문` 과 `재귀` 로 구현할 수 있지만
   만약 가변적일 경우에는 `반복문`으로 구현하기 어려워진다.
   그렇기 때문에 `재귀` 로 구현하는 연습을 많이 할 것
3. 순열이나 조합이나 요소와 뽑아야 하는 갯수가 많아지면 기하급수적으로 메모리와 연산이 증가하기 때문에
   `메모이제이션` 같은 방법을 생각해야한다.
    1. 즉. `시간복잡도` 와 `공간복잡도` 를 고려할 것!! ( 10억 연산이 이루어지면 약 1초 정도 )
4. 순열 표현식 : $nPr$
5. 조합 표현식 : $nCr$

### 부분집합

- 집합의 원소가 n개일 때, 집합에 포함된 원소들을 선택하는 것
- 부분집합의 수는 집합의 원소가 n일 경우,  $2^n$개 이다. ( 공집합 포함 )

## 3. 탐색

### 완전탐색

- **BFS**
    - 루트노드의 자식노드들을 먼저 모두 차례대로 방문한 후에,
      방문했던 자식 노드들을 기준으로 하여 다시 해당 노드의 자식 노드들을 차례로 방문하는 방식
    - 방문했던 자식 노드을 다시 너비우선탐색을 진행하기 위해서 방문한 자식들을 저장하여 사용하기 위해서
      선입선출 방식의 자료구조 `큐` 를 활용함!!

      [https://viewer.diagrams.net/?border=0&tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&open=G1Mr2xHvviHrfavx313FNZ7HvOQuLSSFvp](https://viewer.diagrams.net/?border=0&tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&open=G1Mr2xHvviHrfavx313FNZ7HvOQuLSSFvp)

      > 의사코드
      >

        ```
        BFS() {
        	큐 생성 
        	루트 [a]를 큐에 저장 (front)
        	while( 큐가 비어 있지 않는 경우 ) {
        		// 큐의 제일 앞에 있는 노드를 가져와야함!!
        		t <- 큐의 [a]를 가져옴 (rear)
        		t 방문
        		for ( t의 자식에 대해서 ) {
        			u <- t의 자식
        			u를 큐에 저장 (front)
        		}
        	}
        }
        ```

      💡 `큐(Queue)` 를 `스택(Stack)` 으로 바꿔서 사용하면 DFS가 된다.!!

- **DFS**
    - 루트 노드에서 출발하여 한 방향으로 갈 수 있는 경로가 있는 곳까지 깊이 탐색해 가다가
      더 이상 갈 곳이 없게 되면, 가장 마지막에 만났던 갈림길 간선이 있는 노드로 되돌아와서
      다른 방향의 노드로 탐색을 반복하여 결국 모든 노드를 방문하는 순회방법
    - 가장 마지막에 만났던 갈림길의 노드로 되돌아가서 다시 깊이 우선 탐색을 반복해야 하므로
      `재귀적` 으로 구현하거나 `후입선출` 구조의 `스택` 사용해서 구현가능
    - 함수(function)을 호출하게 되면 메모리에 `스택` 형태로 저장되게 된다.!!!
      그렇기에 재귀적으로 구현을 하여도 DFS가 가능한 것이다.

      [https://viewer.diagrams.net/?border=0&tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=DFS.drawio&open=RzVhbb9sgFP41lrqHRjb4%2Bmjnskpb1UmV2u1pIjZ2rBKTYrIk%2B%2FWDgBM7tpdMS5rkIh1%2FwOHwfXDAGHA4X39maDF7pAkmBjCTtQFHBgCWDYAhf2ayUYjnaiBjeaIr7YHn%2FDfWoKnRZZ7gslGRU0p4vmiCMS0KHPMGhhijq2a1lJJmrwuU4RbwHCPSRl%2FzhM8U6gNvjz%2FgPJtVPVtuoErmqKqsR1LOUEJXNQiODThklHJlzddDTCR5FS%2Bq3aSndBcYwwU%2FpcGXzUPo4afyMTDBkMc%2BeudP947y8guRpR6wDpZvKgYYXRYJlk4sA0arWc7x8wLFsnQlNBfYjM%2BJLtbuMON43RuntRu9mDaYzjFnG1FFN%2FB1THrC2Lbmb7WnH1aczmrUQ0%2BDSEue7VzvWRGGJuYfSLKOkyTEXUgz3pBcsMXgcaqmitev0x2A4rdsy%2FbTkgs3WOOlWhSWI%2Bw0J2RICWXbbmHqyK%2FEacFruPrItpzRN1wrcbef8yhlVYxrqRyrLZXldEgFLiYVaEmVLouY57SwbkWzBGE%2FjTu1iX08TS%2BjjXeqNheTBvZKczPLKXGwn9hd0vhgCi%2B1bFzv2tLYvdLAW5EGW0Icr0uawPUgupQ08NrSuL3S2LciTZqmIO5MaIk7dZ1LbTbBtaWxTjgXHKG%2FUmy%2BzuTxeTBFZR4PqPD4UxxBCV2KMURJzvBWcekClxJilCON3Fuucx6GIQgGgd8kGdoDAFs8Aw8MbL9jX3fcQXW%2BPz%2Fd7b19NHm%2Be%2FlkAJdIUqZMWBnfktGHlAtUNBRy35fyAK7WyX2plAolbwyrdrpCzZNMOjWfYjTKrarwYowjQxxiI18aATQCMV5T2pFphIE0wqEsvc0gQ0va46EReoZvSSMCRrCtFroy8muGnYrMAsw78X%2BRkQUjGZmMW9hjI9gafiRxNZiDESojFJnTfBX%2Fv8ycDxjLB3Yl18lr52h73%2FXM43tHM90XVO4VESJ5JtMSwem%2Bh%2F9LS%2F5B4vfBwGmnfq8j9VvAuVQyah%2BZzkmmkHMyMUfm6GC31SSfgVUbHj%2BEdr66XWw3PeEqAhdJKO905BmHoFLslU0Sm4zjdc6%2F1%2Bwf0h44%2Bmm0rhWNNvpBdYmT1qXQAa8iLLpkMT46RdoCHCG4whgmYov%2F1Yyji3Xdwzeaiwj3qybo0bdyoeLXrerXRoeOQM%2BLZOWII5Zh3nK0nQS7YXfNC%2FG4v%2F1S1fd3iHD8Bw%3D%3D](https://viewer.diagrams.net/?border=0&tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=DFS.drawio&open=RzVhbb9sgFP41lrqHRjb4%2Bmjnskpb1UmV2u1pIjZ2rBKTYrIk%2B%2FWDgBM7tpdMS5rkIh1%2FwOHwfXDAGHA4X39maDF7pAkmBjCTtQFHBgCWDYAhf2ayUYjnaiBjeaIr7YHn%2FDfWoKnRZZ7gslGRU0p4vmiCMS0KHPMGhhijq2a1lJJmrwuU4RbwHCPSRl%2FzhM8U6gNvjz%2FgPJtVPVtuoErmqKqsR1LOUEJXNQiODThklHJlzddDTCR5FS%2Bq3aSndBcYwwU%2FpcGXzUPo4afyMTDBkMc%2BeudP947y8guRpR6wDpZvKgYYXRYJlk4sA0arWc7x8wLFsnQlNBfYjM%2BJLtbuMON43RuntRu9mDaYzjFnG1FFN%2FB1THrC2Lbmb7WnH1aczmrUQ0%2BDSEue7VzvWRGGJuYfSLKOkyTEXUgz3pBcsMXgcaqmitev0x2A4rdsy%2FbTkgs3WOOlWhSWI%2Bw0J2RICWXbbmHqyK%2FEacFruPrItpzRN1wrcbef8yhlVYxrqRyrLZXldEgFLiYVaEmVLouY57SwbkWzBGE%2FjTu1iX08TS%2BjjXeqNheTBvZKczPLKXGwn9hd0vhgCi%2B1bFzv2tLYvdLAW5EGW0Icr0uawPUgupQ08NrSuL3S2LciTZqmIO5MaIk7dZ1LbTbBtaWxTjgXHKG%2FUmy%2BzuTxeTBFZR4PqPD4UxxBCV2KMURJzvBWcekClxJilCON3Fuucx6GIQgGgd8kGdoDAFs8Aw8MbL9jX3fcQXW%2BPz%2Fd7b19NHm%2Be%2FlkAJdIUqZMWBnfktGHlAtUNBRy35fyAK7WyX2plAolbwyrdrpCzZNMOjWfYjTKrarwYowjQxxiI18aATQCMV5T2pFphIE0wqEsvc0gQ0va46EReoZvSSMCRrCtFroy8muGnYrMAsw78X%2BRkQUjGZmMW9hjI9gafiRxNZiDESojFJnTfBX%2Fv8ycDxjLB3Yl18lr52h73%2FXM43tHM90XVO4VESJ5JtMSwem%2Bh%2F9LS%2F5B4vfBwGmnfq8j9VvAuVQyah%2BZzkmmkHMyMUfm6GC31SSfgVUbHj%2BEdr66XWw3PeEqAhdJKO905BmHoFLslU0Sm4zjdc6%2F1%2Bwf0h44%2Bmm0rhWNNvpBdYmT1qXQAa8iLLpkMT46RdoCHCG4whgmYov%2F1Yyji3Xdwzeaiwj3qybo0bdyoeLXrerXRoeOQM%2BLZOWII5Zh3nK0nQS7YXfNC%2FG4v%2F1S1fd3iHD8Bw%3D%3D)

      위 그림에 있는 의사코드를 좀 더 시각적으로 나타내면 아래와 같이 DFS가 동작한다.!!

      [https://viewer.diagrams.net/?border=0&tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&open=G1IOSbQNR2UwIpLLCPtW1HD0mDxY9LCB2L](https://viewer.diagrams.net/?border=0&tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&open=G1IOSbQNR2UwIpLLCPtW1HD0mDxY9LCB2L)

      모든 노드를 방문해서 로직을 처리할 때까지 완전탐색 하는 것이다.
