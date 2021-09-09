INSERT INTO continent values(continent_idx_seq.NEXTVAL, '아시아');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '유럽');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '오세아니아');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '북아메리카');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '남아메리카');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '아프리카');

--아시아
INSERT INTO country values(country_idx_seq.NEXTVAL, '한국', 1, 'korea.jpg', '수도 : 서울<br>인구수 : 5100만<br>동아시아의 한반도 남단에 자리한 민주공화국입니다. 대한민국은 한국 전쟁 이래 일명 ‘한강의 기적’으로 상징되는 빠른 속도의 대규모 경제 성장을 이루었습니다. 세계은행의 분류상 고소득 국가이고, 2016년 유엔의 인간 개발 지수(HDI) 조사에서 세계 18위로 ‘매우 높음’을 기록하였으며, 국제 통화 기금(IMF)의 분류에서 선진 경제국입니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '중국', 1, 'china.jpg', '수도 : 베이징<br>인구수 : 약 14억 5만명<br>이탈리아와 스페인에 이어 세계에서 세 번째로 많은 유네스코 세계유산을 만날 수 있는 나라 중국! 광활한 국토를 자랑하는 만큼 각 도시 별로 특색이 정말 뚜렷합니다. 화려한 야경과 발전된 도시의 모습을 볼 수 있는 상하이부터 동양의 하와이라 불리는 아름다운 휴양지 하이난까지! 다양한 여행지를 만날 수 있습니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '일본', 1, 'japan.jpg', '수도 : 도쿄<br>인구수 : 약 1억 2,626만명<br>태평양에 있는 일본 열도의 네 개의 큰 섬(혼슈, 규슈, 시코쿠, 홋카이도)과 이들 주변에 산재한 작은 섬들로 구성되어 있습니다. 4개의 섬이 일본 전체 면적의 97%를 차지하며, 대부분의 섬들이 화산 활동을 통해 생겨났습니다. 세계에서 이주대상국으로 인기가 많은 나라이며 가장 이주하고 싶은 국가 순위에서 캐나다에 이어 2위를 차지했습니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '베트남', 1, 'vietnam.jpg', '수도 : 하노이<br>인구수 : 9,649만명<br>인도차이나 반도에서 가장 인구가 많은 나라로 최근 인구 통계에서는 9,649만 명으로 조사되어, 세계에서 15번째로 인구가 많은 나라입니다. 최대 도시는 호찌민시입니다. 중화인민공화국과 같은 혼합경제체제를 가진 명목상 공산주의 국가입니다. 열대 계절풍으로 5월부터 10월까지는 많은 비를 몰고 오며, 11월부터 4월까지는 동북 건조기간이 됩니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '태국', 1, 'thailand.jpg', '수도 : 방콬<br>인구수 : 6,600만명<br>세계에서 50번째로 면적이 넓은 국가이며, 22번째로 인구가 많은 국가이기도 합니다. 수도이자 최대 도시는 방콕입니다. 파타야 주변과 남부에는 섬이 꽤 있는데, 믿겨지지 않을 정도로 환상적인 경치를 자랑합니다. 태국에 왔다면 육지의 해변보다는 섬의 해변을 즐길 필요가 있습니다. 방콕 지하철 다음으로 치앙마이도 아닌 푸껫에서 지하철 계획이 추진되는 건 그만한 이유가 있을 것입니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '라오스', 1, 'laos.jpg', '수도 : 하노이<br>인구수 : 9,649만명<br>라오스Laos는 동남아의 중심에 위치하여 위로는 중국이, 옆으로는 미얀마(버마)와 베트남이 위치하고 있고, 아래로는 태국과 캄보디아가 있어 총 5개의 나라와 국경을 맞대고 있습니다. 동남아시아 중심에 위치한 만큼, 라오스 본연의 문화뿐만 아니라 주변 국가들의 영향도 많이 받아 다양하면서도 친숙하기에 첫 방문이라 할지라도 부담 없이 즐길 수 있는 게 큰 특징입니다. 내륙 지방인 만큼 바다는 없지만 강과 산 그리고 자연 모습 그대로 남아 있는 곳들이 많아, 친환경적인 여행을 하고자 한다면 동남아시아에서 라오스만큼 좋은 곳은 없을 것!');
--유럽
INSERT INTO country values(country_idx_seq.NEXTVAL, '독일', 2, 'germany.jpg', '수도 : 베를린<br>인구수 : 약 8,316만명<br>독일처럼 유럽을 캡슐화해서 보여주어 최첨단 현대성이 풍부한 역사를 만나는 곳이라고 할 수 있습니다. 베를린과 뮌헨 같은 독일의 대도시는 과감한 문화와 예술적 유산을 유지하고 있어서 도시 여행에 좋습니다. 분위기를 바꿔보려면 전원으로 가서 작센에서 동화 속의 성, 블랙 포레스트의 고풍스러운 반 목조 주택을 구경하거나 알프스산맥 위의 정겨운 샬레에서 아늑한 시간을 보낼 수도 있습니다. 독일의 전형적인 효율성과 기술력 덕분에 독일은 교통편도 매우 잘 갖추어져 있습니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '체코', 2, 'czech_republic.jpg', '수도 : 프라하<br>인구수 : 약 1,065만명<br>체코는 유럽의 신생국 중 하나지만, 길고 주목할 만한 역사를 지닌 위치에 자리잡고 있습니다. 이곳은 한때 "보헤미아"라고 불렸으며 오늘날까지도 이 이름은 예술적이고 관습에 얽매이지 않는 사람들의 이미지를 연상하게 합니다. 이에 걸맞게 멋진 산맥, 아름다운 숲, 다채로운 건축 양식의 조합을 자랑하는 도시들을 풍경을 보실 수 있습니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '영국', 2, 'england.jpg', '수도 : 런던<br>인구수 : 약 6,511만명<br>잉글랜드는 기술에서 예술에 이르기까지, 모든 분야에서 오래되고 특별한 역사를 가진 나라입니다. 특히 맨체스터, 브리스톨 같은 유명 도시에서는 이런 업적을 쉽게 구경할 수 있습니다. 잉글랜드에 방문하는 사람이라면 이 수수께끼 같은 수도를 들르지 않는 사람은 거의 없을 것입니다. 국회의사당과 버킹엄 궁전처럼 상징적 건축물들과 세계 최고의 박물관 중 일부는 꼭 가봐야합니다. 하지만 런던의 국제적인 거리와 유명한 명소들 못지않게 중부 잉글랜드의 지방 카운티에 있는 고풍스러운 마을과 푸른 산들, 그리고 북쪽으로 더 가면 나오는 페나인과 레이크 디스트릭트의 험준한 산악 풍경도 놓치기 아까운 곳들입니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '벨기에', 2, 'belgium.jpg', '수도 : 브뤼셀<br>인구수 : 약 1,157만명<br>벨기에는 크기는 상대적으로 작지만 역사적으로나 문화적으로 즐길거리들이 환상적으로 다양합니다. EU 본부가 있는 벨기에는 국제적이고 멋진 나라입니다. 프랑스어와 네덜란드어를 공용어로 사용하는 섹션이 나뉘기 때문에 주요 도시들에 독특한 지역적 차이가 있습니다. 벨기에의 수도인 브뤼셀은 멋진 건축물들이 많은데, 그중에서도 그랑 플라스는 유럽에서 가장 예쁜 중앙 광장 중 하나로 꼽힙니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '네덜란드', 2, 'netherlands.jpg', '수도 : 암스테르담<br>인구수 : 약 1,720만명<br>네덜란드는 대부분의 여행객에게 풍차와 다채로운 꽃들이 만발한 이미지로 연상됩니다. 이 북서 유럽 국가는 진보적 세계관, 세계적 수준의 예술, 자전거 친화적 도시로도 유명해요. 암스테르담 하면 홍등가와 대마초가 가장 먼저 떠오를지도 모르지만, 운치 있는 운하와 꽃이 만발한 공원은 가족들에게 즐거운 시간을 선사해줄 것입니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '덴마크', 2, 'denmark.jpg', '수도 : 코펜하겐<br>인구수 : 약 580만명<br>덴마크는 규모는 작을지 몰라도 문화와 역사 면에서 엄청난 저력을 가진 나라입니다. 멋진 풍경, 둘러보기 쉬운 도시, 너무나 친절한 사람들이 있는 이 나라가 지구상에서 가장 행복한 곳으로 꼽힙니다. 세계에서 가장 인기 있는 장난감 중 하나인 레고의 발상지 덴마크는 가족 휴가를 보내기에 좋은 곳이지만, 코펜하겐에서 자갈길과 해안가의 로맨틱한 분위기를 즐길 수 있어서 커플에게도 인기가 있습니다.');
--오세아니아
INSERT INTO country values(country_idx_seq.NEXTVAL, '뉴질랜드', 3, 'newzealand.jpg', '수도 : 웰링턴<br>인구수 : 약 470만명<br>북섬보다는 남섬 쪽에 여행할 곳이 많습니다. 남쪽 크라이스트 처치의 뉴브라이튼 피어는 바다 쪽으로 길게 이어진 다리인데 낚시가 가능하며 마치 바다 위에 떠 있는 느낌이라 가볼만 합니다. 뉴브라이튼 피어 건물 근처의 도서관은 바다를 보며 책을 읽을 수 있으며 근처 레스토랑의 사워 엣지가 유명하여 유학생들이 많이 찾아갑니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '호주', 3, 'austrailia.jpg', '수도 : 캔버라<br>인구수 : 약 2,564만명<br>호주는 호주 대륙이라는 하나의 대륙과 테즈메이니아를 비롯한 부속 도서로 이루어진 나라로 4계절이 미약하게 뚜렷한 아열대기후대에 국토 대부분이 몰려있으며, 일부는 지중해성 기후 및 서안 해양성 기후를 나타냅니다. 일반적으로 여름은 덥고 건조하며 겨울은 온난하고 습한 편이지만 땅이 넓은 나라이니만큼 지역별 편차가 큽니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '팔라우', 3, 'palau.jpg', '수도 : 응게룰무드<br>인구수 : 약 1,8만명<br>바다 경관이 매우 아름다워서 전세계에서 스쿠버다이버들이 많이들 찾아옵니다. 팔라우의 침몰선 포인트만 정리한 전문서적이 따로 있을 정도. 스쿠버다이버들은 주로 코로로 섬에 머무르면서 아침에 스피드보트를 타고 나가 다이빙을 즐기고 오후에 돌아오는 일정을 이용하며, 최근에는 아예 리브어보드를 타고 팔라우 섬 주변을 도는 일정도 성행하고 있습니다. 자연적으로 폐쇄된 환경으로 인해 독을 잃어버린 해파리들 수백마리가 사는 젤리피쉬 호수는 팔라우 최고의 관광 명소 중 하나입니다.');
--북아메리카
INSERT INTO country values(country_idx_seq.NEXTVAL, '미국', 4, 'usa.jpg', '수도 : 워싱턴<br>인구수 : 약 3억 3,100만명<br>배낭여행 하면 빼놓을 수 없는 국가가 미국입니다. 볼거리가 많으며, 소비의 국가답게 선진국치고는 의외로 물가도 저렴한 국가다. 유럽은 물론 대한민국 및 일본, 홍콩 등과 비교해도 싸다고 느껴지는 품목도 많이 보일 정도. 아메리칸 스케일이라는 말이 있을 정도로 공업 생산량이 무지막지해 엄청난 양의 공산품을 대량으로 월마트 등을 통해 전 미대륙에 살포하는 나라가 미국입니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '캐나다', 4, 'canada.jpg', '수도 : 오타와<br>인구수 : 약 3,774만명<br>미국 바로 위에 붙어있는 나라이기 때문에 멕시코와 함께 세트로 묶어서 여행하기도 합니다.  퀘벡 시티로 대표되는 퀘벡 주로 가면 유럽풍의 독특한 정취를 느껴볼 수도 있습니다. 흔히 퀘벡 주 근처로 가면 아예 영어가 통하지 않고 불어만 통한다고 알고 있는 사람이 많은데, 퀘벡 시티같은 관광지는 영어가 다 통하니 너무 걱정할 거 없습니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '멕시코', 4, 'mexico.jpg', '수도 : 멕시코시티<br>인구수 : 약 1억 3,020만명<br>멕시코시티 기준 근교관광지가 많습니다. 톨루카 데 레르도에는 네바도 데 톨루카가 있으며, 겨울에는 눈을 보기 위해 수많은 관광객들이 찾습니다. 이곳 정상에서는 날이 좋으면 톨루카 시가지는 기본이고, 80km나 떨어져 있는 포포카테페틀 화산까지 보이기는 합니다. 발례 데 브라보는 생태관광으로 유명한데, 주변에는 말레콘이 있어서 배타고 놀기 좋으며, 경치도 엄청 좋아서 하루 정도 놀고 오기에 안성맞춤입니다.');
--남아메리카
INSERT INTO country values(country_idx_seq.NEXTVAL, '에콰도르', 5, 'ecuador.jpg', '수도 : 키토<br>인구수 : 약 1,750만명<br>남아메리카에 위치한 나라로 콜롬비아와 페루 사이에 끼어 있는 작은 국가입니다. 안데스 산맥에서 밀림, 바다, 갈라파고스 제도까지 다양한 자연환경을 가지고 있어  다양한 야생동물들이 분포, 서식합니다. 현재 에콰도르 본토와 갈라파고스 제도 등 에콰도르 곳곳에 이러한 야생동식물들의 서식지를 보존하기 위해 국립공원들이 지정되어 있는데 특히 갈라파고스 제도는 섬 전체 면적의 97%가 국립공원입니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '브라질', 5, 'brazil.jpg', '수도 : 브라질리아<br>인구수 : 약 2억 1천만명<br>브라질 최남단 지역으로 파라과이, 아르헨티나, 우루과이에 접하며 남쪽으로 흐르는 파라나 강이 서쪽 국경구실을 하고 세계 3대 폭포로 꼽히는 거대한 폭포인 이과수 폭포가 있습니다. 파라냐 주, 히우그란지두술 주, 산타카타리나 주 등이 이에 해당한다. 북쪽 이과수 일대는 열대 사바나기후이지만 히우그란지두술과 산타카타리나 주는 완전한 아열대 즉 온대 습윤기후로 겨울 평균이 13도, 여름 평균이 24도 정도로 온난한 편이며 여름에도 더위가 생각보다 심하지 않습니다.');
INSERT INTO country values(country_idx_seq.NEXTVAL, '칠레', 5, 'chile.jpg', '수도 : 산티아고<br>인구수 : 약 1,895만명<br>북중부의 연중 온난하고 건조한 맑은 기후, 안데스 산맥의 높은 해발고도, 비교적 안정된 국내정세 덕분에 하와이 마우나케아 산과 함께 지상에 건설되는 거대 망원경 건설의 최적지로 꼽힙니다. 국토 중앙을 안데스 산맥이 가로 막고 있고 길고 특이하게 생긴 국토 지형 때문에 사람들의 주거 공간이 태평양 연안 저지대 일대에 제한되어 있습니다. 옆나라 아르헨티나와 더불어 라틴아메리카 지역에서 영토 대비에 비해 인구가 적은 국가이기도 합니다.');
--아프리카

--한국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '카스', 4.5, '라거', 'test', 1, 'imagePath');
--중국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '칭따오', 5.0, '라거', 2);
--일본
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '아사히', 5.0, '페일 라거', 3);
--베트남
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '비아 하노이', 4.2, '라거', 4);
--태국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '창 비어', 5.2, '라거', 5);
--라오스
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '비어라오', 5.0, '라거', 6);

--독일
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '벡스', 5.0, '라거', 1);
--체코
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '필스너 우르겔', 4.4, '라거', 2);
--영국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '뉴캐슬 브라운 에일', 4.7, '브라운 에일', 3);
--벨기에
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '스텔라 아르투아', 5.2, '라거', 4);
--네덜란드
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '하이네켄', 5.0, '라거', 5);
--덴마크
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '칼스버그', 5.0, '라거', 6);

--뉴질랜드
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '엔지 퓨어', 5.0, '페일 라거', 1);
--파푸아뉴기니
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, ' ', 4.4, '라거', 2);
--호주
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '빅토리아 비터', 4.6, '비터 라거', 3);
--팔라우
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '레드 루스터', 5.0, '라거', 4);
--투발루
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 5);
--솔로몬제도
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 6);

--미국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 1);
--캐나다
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.4, '라거', 2);
--멕시코
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.7, '브라운 에일', 3);
--과테말라
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.2, '라거', 4);
--쿠바
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 5);
--자메이카
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 6);

--아르헨티나
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 1);
--에콰도르
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.4, '라거', 2);
--브라질
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.7, '브라운 에일', 3);
--우루과이
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.2, '라거', 4);
--칠레
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 5);
--페루
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 6);

--모로코
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 1);
--나이지리아
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.4, '라거', 2);
--이집트
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.7, '브라운 에일', 3);
--케냐
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.2, '라거', 4);
--에티오피아
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 5);
--모리셔스
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 6);
