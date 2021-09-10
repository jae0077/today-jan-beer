# 오늘 잔 Beer

## 📝Summary

![todayjanbeer](https://user-images.githubusercontent.com/44844956/132780828-d92f15af-3d55-4f09-9934-b40549b6fa49.jpg)

맥주를 사랑하는 사랑하는 사람들을 위해 각 대륙별, 나라별 대표 맥주를 소개해줌으로써 세계에는 다양하고 맛있는 맥주들이 있다는 것을 알리기 위함

## 👨‍👦‍👦Member

🐷[차재훈](https://coblin.tistory.com/)

🐮[김지명](https://jimyeung-dev-til.tistory.com/)

🐶[방지원](https://url.kr/7hb6un)

저희를 눌러주세요~

## ⚙Environment

-   jdk1.8.0_201
    
-   IDE : eclipse
    
-   DB : Oracle XE 11g
    
-   Server : tomcat 9.0
    
-   **사용 기술**
    
    `JPA` / `LOMBOK` / `Maven` / `HTML` / `CSS` / `w3.css template`
    

## 🐳Database Modeling

<details>
<summary>초기.ver</summary>
<div markdown="1">       

![Untitled](https://user-images.githubusercontent.com/44844956/132781059-33a5a8ba-9098-4f41-ab12-8ac588747b19.png)

</div>
</details>


<details>
<summary>최종.ver</summary>
<div markdown="1">       

![Untitled2](https://user-images.githubusercontent.com/44844956/132781064-c8b1bef4-1d6b-478e-9beb-3da29e524ab0.png)

</div>
</details>
    
🚨사진이 필요한 **Beer**와 **Country** 테이블에 **img_path**를 넣어주고 반복문으로 활용하여 해당하는 사진을 출력할 수 있도록 구현

## 🛠Display

<details>
<summary>main display</summary>
<div markdown="1">       

![index](https://user-images.githubusercontent.com/44844956/132781747-c2bef578-9406-4789-8687-e145e492f3f4.png)

</div>
</details>

<details>
<summary>continent display</summary>
<div markdown="1">       

![continent](https://user-images.githubusercontent.com/44844956/132781752-a3750a2f-fc0f-432a-b569-4457309e31c7.png)

![continent2](https://user-images.githubusercontent.com/44844956/132781756-5e6eddc0-b7b9-410f-97eb-973202f389ea.png)
	
</div>
</details>

<details>
<summary>country display</summary>
<div markdown="1">       

![country](https://user-images.githubusercontent.com/44844956/132781759-82030143-f361-481d-b3a0-7e9af666771b.png)

</div>
</details>

## ⏰History

<details>
<summary>Join 출력과정 **org.hibernate.LazyInitializationException** 예외발생발생❗</summary>
<div markdown="1">       

```java
<< 해결전 >>
//Continenty.java
@Column(name="country_idx", nullable=true, unique=true)
@OneToMany(fetch=FetchType.EAGER, mappedBy="continentIdx")
private List<Country> countryIdx;

@ManyToOne(fetch=FetchType.EAGER)
@JoinColumn(name="continent_idx")
private Continent continentIdx;

@Column(name="beer_idx", nullable=true, unique=true)
@OneToMany(fetch=FetchType.EAGER, mappedBy="countryIdx")
private List<Beer> beerIdx;

@ManyToOne(fetch=FetchType.EAGER)
@JoinColumn(name="country_idx")
private Country countryIdx;

<< 해결 후>>

@Column(name="country_idx", nullable=true, unique=true)
@OneToMany(fetch=FetchType.EAGER, mappedBy="continentIdx")
private List<Country> countryIdx;

@ManyToOne(fetch=FetchType.EAGER)
@JoinColumn(name="continent_idx")
private Continent continentIdx;

@Column(name="beer_idx", nullable=true, unique=true)
@OneToMany(fetch=FetchType.EAGER, mappedBy="countryIdx")
private List<Beer> beerIdx;

@ManyToOne(fetch=FetchType.EAGER)
@JoinColumn(name="country_idx")
private Country countryIdx;
    
```
    
    FetchType.Lazy 로 조인문이 처리되지 않아서 FetchType.Eager로 변경해주어 문제없이 출력되도록 조치
    
    💢평소에는 Lazy문을 사용하는 것이 좋으나 조인 부분에 있어서 원하는 값이 출력 되지 않을경우 Eager를 사용해준다.

</div>
</details>

<details>
<summary>persistence-unit name 변경확인❗</summary>
<div markdown="1">       

```java
<persistence-unit name="oracleDBUse">
	...
</persistence-unit>
    
```
    
```java
public class DBUtil {
	private static EntityManagerFactory emf;

static {
	emf = Persistence.createEntityManagerFactory("oracleDBUse");
}
    
```
    
DBUtil에 있는 DB명칭과 persistence-unit name에 있는 DB 이름이 일치하는지 꼭 확인해준다.

코드 부분만 생각하다보니 이 부분을 놓쳐 계속 에러가 뜨는데도 오랜시간동안 잡지 못했던 에러입니다.

</div>
</details>

<details>
<summary>refresh(F5) 필수❗</summary>
<div markdown="1">       

-   git pull 받은 경우
-   project 폴더에 image 추가하거나 변경된 경우    
	
![refresh](https://user-images.githubusercontent.com/44844956/132782925-0380e5ef-8558-4e07-8e13-d783ed2ed2df.png)

</div>
</details>

<details>
<summary>맥주 출력화면 layout밑단 맞추기❗</summary>
<div markdown="1">       

맥주 설명 길이가 짧을 때 해당 영역의 layout이 어긋나는 상황이 발생하였다.

최소 높이를 style="min-height:150px"로 설정하여 해결점을 찾음.
    
-   적용 전
![before1](https://user-images.githubusercontent.com/44844956/132782933-a208b9e1-ab1f-44f2-b008-76b3a9e6cbbb.png)

-   적용 후
  ![after1](https://user-images.githubusercontent.com/44844956/132782937-2dc94f34-1972-4031-9445-ac4b18a257a3.png)
        
```java
<div class="w3-row-padding" style="margin:0 -16px">
	<c:forEach items="${requestScope.selectBeer}" var="data">
		<div class="w3-half w3-margin-bottom">
			<ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
				<li class="w3-black w3-xlarge w3-padding-32">
					<img alt="맥주" src="images/beer/${data.imgPath}" width="100%">
					<br>
					<h3 class="w3-Jua">${data.name}</h3>
				</li>
				<li class="w3-padding-16 w3-Jua">${data.alcohol}</li>
				<li class="w3-padding-16 w3-Jua">${data.kinds}</li>
				<li class="w3-padding-16 w3-Jua" style="min-height:150px;">${data.info}</li>
			</ul>
		</div>
	</c:forEach>
</div>

```

</div>
</details>

<details>
<summary>country layout 수정❗</summary>
<div markdown="1">       

w3-third : class 영역의 넓이를 1/3(33.3%) 로 나눠주는 class
    
img 마다 w3-third를 만들어 사용하다 보니 이미지 크기가 안맞는 경우 해당 위치를 무시하고 이미지가 들어갈 수 있는 자리에 이미지가 들어가 빈 공간이 생기는 현상을 발견

w3-third를 3개만 만들어서 이미지 크기와 상관없이 위에서 아래로 이미지가 쌓이는 형태로 구현 하여 해결

-   수정 전
	![before2](https://user-images.githubusercontent.com/44844956/132783054-9299e19b-ed10-418a-bb2d-989dc850932f.png)
        
```java
<c:forEach items="${requestScope.selectCountryList}" var="data" varStatus="status">
	<div class="w3-third">
		<a href="${url}controller?command=beer&country=${data.countryIdx}">
			<div class="w3-hover-opacity w3-display-container">
				<img src="images/country/${data.imgPath}" style="width:100%">		
				<div class="w3-display-middle w3-display-hover">
					<p class="w3-xlarge font-effect-shadow-multiple">${data.name}</p>
				</div>
			</div>
		</a>
	</div>
</c:forEach>

```
        
-   수정 후
	![after2](https://user-images.githubusercontent.com/44844956/132783059-6a2db77b-7810-4554-bf5a-035c556af331.png)
        
```java
<div class="w3-third">
	<c:forEach items="${requestScope.selectCountryList}" var="data" begin="0" step="3" varStatus="status">
		<a href="${url}controller?command=beer&country=${data.countryIdx}">
			<div class="w3-hover-opacity w3-display-container">
				<img src="images/country/${data.imgPath}" style="width:100%">		
				<div class="w3-display-middle w3-display-hover">
					<p class="w3-xlarge font-effect-shadow-multiple w3-Jua">${data.name}</p>
				</div>
			</div>
		</a>
	</c:forEach>
</div>

<div class="w3-third">
	<c:forEach items="${requestScope.selectCountryList}" var="data" begin="1" step="3" varStatus="status">
		<a href="${url}controller?command=beer&country=${data.countryIdx}">
			<div class="w3-hover-opacity w3-display-container">
				<img src="images/country/${data.imgPath}" style="width:100%">		
				<div class="w3-display-middle w3-display-hover">
					<p class="w3-xlarge font-effect-shadow-multiple w3-Jua">${data.name}</p>
				</div>
			</div>
		</a>
	</c:forEach>
</div>

<div class="w3-third">
	<c:forEach items="${requestScope.selectCountryList}" var="data" begin="2" step="3" varStatus="status">
		<a href="${url}controller?command=beer&country=${data.countryIdx}">
			<div class="w3-hover-opacity w3-display-container">
				<img src="images/country/${data.imgPath}" style="width:100%">		
				<div class="w3-display-middle w3-display-hover">
					<p class="w3-xlarge font-effect-shadow-multiple w3-Jua">${data.name}</p>
				</div>
			</div>
		</a>
	</c:forEach>
</div>

```

</div>
</details>
    
<details>
<summary>여러 query를 하나의 query로 처리하는 subquery</summary>
<div markdown="1">       

```sql
    SELECT CONTINENT_IDX FROM country WHERE CONTINENT_IDX = ?;
    SELECT * FROM COUNTRY WHERE CONTINENT_IDX = ?;
    
    SELECT * 
    FROM COUNTRY 
    WHERE CONTINENT_IDX = (SELECT CONTINENT_IDX 
			   FROM country 
			   WHERE CONTINENT_IDX = ?);
```

</div>
</details>
    

## ➕Improvements

-   관리자 전용 페이지 구현
-   나라 검색
-   나라 여행지 추천 구현
