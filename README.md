# ์ค๋ ์ Beer

## ๐Summary

![todayjanbeer](https://user-images.githubusercontent.com/44844956/132780828-d92f15af-3d55-4f09-9934-b40549b6fa49.jpg)

๋งฅ์ฃผ๋ฅผ ์ฌ๋ํ๋ ์ฌ๋ํ๋ ์ฌ๋๋ค์ ์ํด ๊ฐ ๋๋ฅ๋ณ, ๋๋ผ๋ณ ๋ํ ๋งฅ์ฃผ๋ฅผ ์๊ฐํด์ค์ผ๋ก์จ ์ธ๊ณ์๋ ๋ค์ํ๊ณ  ๋ง์๋ ๋งฅ์ฃผ๋ค์ด ์๋ค๋ ๊ฒ์ ์๋ฆฌ๊ธฐ ์ํจ

## ๐จโ๐ฆโ๐ฆMember

๐ท[์ฐจ์ฌํ](https://coblin.tistory.com/)

๐ฎ[๊น์ง๋ช](https://jimyeung-dev-til.tistory.com/)

๐ถ[๋ฐฉ์ง์](https://url.kr/7hb6un)

์ ํฌ๋ฅผ ๋๋ฌ์ฃผ์ธ์~

## โEnvironment

-   jdk1.8.0_201
    
-   IDE : eclipse
    
-   DB : Oracle XE 11g
    
-   Server : tomcat 9.0
    
-   **์ฌ์ฉ ๊ธฐ์ **
    
    `JPA` / `LOMBOK` / `Maven` / `HTML` / `CSS` / `w3.css template`
    

## ๐ณDatabase Modeling

<details>
<summary>์ด๊ธฐ.ver</summary>
<div markdown="1">       

![Untitled](https://user-images.githubusercontent.com/44844956/132781059-33a5a8ba-9098-4f41-ab12-8ac588747b19.png)

</div>
</details>


<details>
<summary>์ต์ข.ver</summary>
<div markdown="1">       

![Untitled2](https://user-images.githubusercontent.com/44844956/132781064-c8b1bef4-1d6b-478e-9beb-3da29e524ab0.png)

</div>
</details>
    
๐จ์ฌ์ง์ด ํ์ํ **Beer**์ **Country** ํ์ด๋ธ์ **img_path**๋ฅผ ๋ฃ์ด์ฃผ๊ณ  ๋ฐ๋ณต๋ฌธ์ผ๋ก ํ์ฉํ์ฌ ํด๋นํ๋ ์ฌ์ง์ ์ถ๋ ฅํ  ์ ์๋๋ก ๊ตฌํ

## ๐ Display

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

## โฐHistory

<details>
<summary>Join ์ถ๋ ฅ๊ณผ์  **org.hibernate.LazyInitializationException** ์์ธ๋ฐ์๋ฐ์โ</summary>
<div markdown="1">       

```java
<< ํด๊ฒฐ์  >>
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

<< ํด๊ฒฐ ํ>>

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
    
    FetchType.Lazy ๋ก ์กฐ์ธ๋ฌธ์ด ์ฒ๋ฆฌ๋์ง ์์์ FetchType.Eager๋ก ๋ณ๊ฒฝํด์ฃผ์ด ๋ฌธ์ ์์ด ์ถ๋ ฅ๋๋๋ก ์กฐ์น
    
    ๐ขํ์์๋ Lazy๋ฌธ์ ์ฌ์ฉํ๋ ๊ฒ์ด ์ข์ผ๋ ์กฐ์ธ ๋ถ๋ถ์ ์์ด์ ์ํ๋ ๊ฐ์ด ์ถ๋ ฅ ๋์ง ์์๊ฒฝ์ฐ Eager๋ฅผ ์ฌ์ฉํด์ค๋ค.

</div>
</details>

<details>
<summary>persistence-unit name ๋ณ๊ฒฝํ์ธโ</summary>
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
    
DBUtil์ ์๋ DB๋ช์นญ๊ณผ persistence-unit name์ ์๋ DB ์ด๋ฆ์ด ์ผ์นํ๋์ง ๊ผญ ํ์ธํด์ค๋ค.

์ฝ๋ ๋ถ๋ถ๋ง ์๊ฐํ๋ค๋ณด๋ ์ด ๋ถ๋ถ์ ๋์ณ ๊ณ์ ์๋ฌ๊ฐ ๋จ๋๋ฐ๋ ์ค๋์๊ฐ๋์ ์ก์ง ๋ชปํ๋ ์๋ฌ์๋๋ค.

</div>
</details>

<details>
<summary>refresh(F5) ํ์โ</summary>
<div markdown="1">       

-   git pull ๋ฐ์ ๊ฒฝ์ฐ
-   project ํด๋์ image ์ถ๊ฐํ๊ฑฐ๋ ๋ณ๊ฒฝ๋ ๊ฒฝ์ฐ    
	
![refresh](https://user-images.githubusercontent.com/44844956/132782925-0380e5ef-8558-4e07-8e13-d783ed2ed2df.png)

</div>
</details>

<details>
<summary>๋งฅ์ฃผ ์ถ๋ ฅํ๋ฉด layout๋ฐ๋จ ๋ง์ถ๊ธฐโ</summary>
<div markdown="1">       

๋งฅ์ฃผ ์ค๋ช ๊ธธ์ด๊ฐ ์งง์ ๋ ํด๋น ์์ญ์ layout์ด ์ด๊ธ๋๋ ์ํฉ์ด ๋ฐ์ํ์๋ค.

์ต์ ๋์ด๋ฅผ style="min-height:150px"๋ก ์ค์ ํ์ฌ ํด๊ฒฐ์ ์ ์ฐพ์.
    
-   ์ ์ฉ ์ 
![before1](https://user-images.githubusercontent.com/44844956/132782933-a208b9e1-ab1f-44f2-b008-76b3a9e6cbbb.png)

-   ์ ์ฉ ํ
  ![after1](https://user-images.githubusercontent.com/44844956/132782937-2dc94f34-1972-4031-9445-ac4b18a257a3.png)
        
```java
<div class="w3-row-padding" style="margin:0 -16px">
	<c:forEach items="${requestScope.selectBeer}" var="data">
		<div class="w3-half w3-margin-bottom">
			<ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
				<li class="w3-black w3-xlarge w3-padding-32">
					<img alt="๋งฅ์ฃผ" src="images/beer/${data.imgPath}" width="100%">
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
<summary>country layout ์์ โ</summary>
<div markdown="1">       

w3-third : class ์์ญ์ ๋์ด๋ฅผ 1/3(33.3%) ๋ก ๋๋ ์ฃผ๋ class
    
img ๋ง๋ค w3-third๋ฅผ ๋ง๋ค์ด ์ฌ์ฉํ๋ค ๋ณด๋ ์ด๋ฏธ์ง ํฌ๊ธฐ๊ฐ ์๋ง๋ ๊ฒฝ์ฐ ํด๋น ์์น๋ฅผ ๋ฌด์ํ๊ณ  ์ด๋ฏธ์ง๊ฐ ๋ค์ด๊ฐ ์ ์๋ ์๋ฆฌ์ ์ด๋ฏธ์ง๊ฐ ๋ค์ด๊ฐ ๋น ๊ณต๊ฐ์ด ์๊ธฐ๋ ํ์์ ๋ฐ๊ฒฌ

w3-third๋ฅผ 3๊ฐ๋ง ๋ง๋ค์ด์ ์ด๋ฏธ์ง ํฌ๊ธฐ์ ์๊ด์์ด ์์์ ์๋๋ก ์ด๋ฏธ์ง๊ฐ ์์ด๋ ํํ๋ก ๊ตฌํ ํ์ฌ ํด๊ฒฐ

-   ์์  ์ 
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
        
-   ์์  ํ
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
<summary>์ฌ๋ฌ query๋ฅผ ํ๋์ query๋ก ์ฒ๋ฆฌํ๋ subquery</summary>
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
    

## โImprovements

-   ๊ด๋ฆฌ์ ์ ์ฉ ํ์ด์ง ๊ตฌํ
-   ๋๋ผ ๊ฒ์
-   ๋๋ผ ์ฌํ์ง ์ถ์ฒ ๊ตฌํ
