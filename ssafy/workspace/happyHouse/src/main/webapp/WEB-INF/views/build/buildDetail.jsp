<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아파트 상세화면</title>
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"
    ></script>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
            crossorigin="anonymous"
    />
    <link href="../assets/css/common.css" rel="stylesheet" />

</head>
<body>
    <jsp:include page="../include/confirm.jsp" />
    <main >
        <section class="text-center container p-1">
            <div class="row">
                <div class="col-12 mx-auto">
                    <div id="map" style="height:25rem"></div>
                </div>
            </div>
        </section>

        <div class="container">
            <div class="row row-cols-2 justify-content-center p-3">
                <div class="col-12 col-md-7">
                    <figure class="figure">
                        <img src="${root}/assets/img/building_default.png" class="figure-img img-fluid rounded" alt="기본이미지">
                        <figcaption class="figure-caption">A caption for the above image.</figcaption>
                    </figure>
                </div>
                <div class="col-12 col-md-5">
                    <div class="row row-cols-2 justify-content-between py-3">
                        <div class="col-auto">
                            <div class="btn-group me-2">
                                <button type="button" class="btn btn-sm btn-outline-secondary" data-category="Q">음식</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary" data-category="F">생활</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary" data-category="R">교육</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary" data-category="L">부동산</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary" data-category="N">관광</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary" data-category="O">숙박</button>
                            </div>
                        </div>
                        <div class="col-2">
                            <button type="button" class="btn btn-sm btn-outline-secondary" id="btn-favChange">
                                <svg id="favorite" xmlns="http://www.w3.org/2000/svg" width="24" height="24" data-favorite="white" viewBox="0 0 512 512"><path d="M244 84L255.1 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 0 232.4 0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84C243.1 84 244 84.01 244 84L244 84zM255.1 163.9L210.1 117.1C188.4 96.28 157.6 86.4 127.3 91.44C81.55 99.07 48 138.7 48 185.1V190.9C48 219.1 59.71 246.1 80.34 265.3L256 429.3L431.7 265.3C452.3 246.1 464 219.1 464 190.9V185.1C464 138.7 430.4 99.07 384.7 91.44C354.4 86.4 323.6 96.28 301.9 117.1L255.1 163.9z"/></svg>
                            </button>
                        </div>
                    </div>
                    <table class="table table-striped">
                        <tr>
                            <th>아파트:</th>
                            <td>${build.apartmentName}</td>
                        </tr>
                        <tr>
                            <th>건축년도:</th>
                            <td>${build.buildYear}년</td>
                        </tr>
                        <tr>
                            <th>주소:</th>
                            <td>${build.address}</td>
                        </tr>
                        <tr>
                            <th>층:</th>
                            <td>${build.floor}층</td>
                        </tr>
                        <tr>
                            <th>면적:</th>
                            <td>${build.area}</td>
                        </tr>
                        <tr>
                            <th>가격:</th>
                            <td>${build.dealAmount} 만원</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </main>

    <jsp:include page="../include/footer.jsp" />

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7de9f8e544cd2366ea5e0037853b3216&libraries=services"></script>
    <script type="text/javascript" src="${root}/assets/js/map.js"></script>
    <script>

        let houses = [];

        window.onload = function() {

            let apt = {};
            apt.dong = `${build.dong}`;
            apt.jibun = `${build.jibun}`;
            apt.apartmentName = `${build.apartmentName}`;

            houses.push(apt);
            makePinPoint(houses);
        }

        document.getElementById('btn-favChange').addEventListener('click',function() {
            let fav = document.getElementById('favorite');
            let data = fav.getAttribute('data-favorite');
            if( data == 'white' ) {
                fav.setAttribute('data-favorite','black');
                fav.innerHTML = '<path d="M47.6 300.4L228.3 469.1c7.5 7 17.4 10.9 27.7 10.9s20.2-3.9 27.7-10.9L464.4 300.4c30.4-28.3 47.6-68 47.6-109.5v-5.8c0-69.9-50.5-129.5-119.4-141C347 36.5 300.6 51.4 268 84L256 96 244 84c-32.6-32.6-79-47.5-124.6-39.9C50.5 55.6 0 115.2 0 185.1v5.8c0 41.5 17.2 81.2 47.6 109.5z"/>';
            } else if( data == 'black') {
                fav.setAttribute('data-favorite','white');
                fav.innerHTML = '<path d="M244 84L255.1 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 0 232.4 0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84C243.1 84 244 84.01 244 84L244 84zM255.1 163.9L210.1 117.1C188.4 96.28 157.6 86.4 127.3 91.44C81.55 99.07 48 138.7 48 185.1V190.9C48 219.1 59.71 246.1 80.34 265.3L256 429.3L431.7 265.3C452.3 246.1 464 219.1 464 190.9V185.1C464 138.7 430.4 99.07 384.7 91.44C354.4 86.4 323.6 96.28 301.9 117.1L255.1 163.9z"/>';
            }
        });
    </script>
</body>
</html>