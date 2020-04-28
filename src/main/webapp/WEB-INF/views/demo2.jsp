<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">

	<title>Demo</title>

	<style>
		html,
		body {
			height: 100%;
			margin: 0;
			font: normal 13px / 20px 'Open Sans', 'Nanum Gothic', '나눔고딕', "돋움", Arial, sans-serif;
			-webkit-text-size-adjust: 100%;
			-ms-text-size-adjust: 100%;
			background: #e8e8e8;
			color: inherit;
		}

		h1,
		h2,
		h3,
		h4,
		h5,
		h6 {
			margin: 0 0 15px 0;
			font-weight: normal;
			color: inherit;
			text-transform: none;
			font-family: 'Open Sans', 'Nanum Gothic', '나눔고딕', "돋움", Arial, sans-serif;
		}

		table {
			border-collapse: collapse;
			border-spacing: 0;
			table-layout: fixed
		}

		caption,
		legend {
			overflow: hidden;
			visibility: hidden;
			width: 0;
			height: 0;
			text-indent: -9999px;
			line-height: 0;
			font-size: 0;
			position: absolute;
			top: -9999em
		}

		img,
		fieldset,
		button {
			border: 0
		}

		input,
		select,
		textarea {
			vertical-align: middle
		}

		textarea {
			border: solid 1px #333333
		}

		img {
			vertical-align: middle
		}

		ul,
		ol,
		li {
			list-style: none
		}

		hr {
			display: none
		}

		em,
		address {
			font-style: normal
		}

		input {
			font-family: "NanumGothic", NanumGothic, Dotum, "돋움", Arial, sans-serif;
			color: #333333
		}

		select {
			border: 1px solid #dedede;
			font-size: 12px;
			vertical-align: middle;
			line-height: 1.9em;
			height: 28px;
			font-family: Dotum, '돋움', Arial, sans-serif;
			color: #555
		}

		input,
		select {
			font-size: 100%;
			vertical-align: middle
		}

		button,
		label,
		input[type=image] {
			cursor: pointer
		}

		button {
			background: none;
			padding: 0;
			border: 0 none;
			display: inline-block;
			margin: 0;
			cursor: pointer;
			font-family: "NanumGothic", NanumGothic, Dotum, "돋움", Arial, sans-serif;
			font-size: 12px
		}

		input[type=checkbox] {
			border: 0
		}

		input[type=radio] {
			border: 0
		}



		a,
		.uk-link {
			color: inherit;
			text-decoration: none;
			cursor: pointer;
		}

		a:hover,
		.uk-link:hover {
			color: inherit;
			text-decoration: underline;
		}

		/* btn */

		a.blue {
			display: block;
			float: left;
			width: 87px;
			height: 24px;
			margin-right: 5px;
			text-align: center;
			line-height: 24px;
			border: 1px solid #888;
			font-size: 12px;
			color: #666;
			background-color: #fff;
		}

		a.blue:hover {
			border: 1px solid #666;
			color: #666;
			text-decoration: none;
		}

		a.blue:last-child {
			margin-right: 0;
		}

		div.blue_absolute {
			position: absolute;
			bottom: 4px;
			right: 0;
		}

		a.blue2 {
			display: block;
			float: left;
			width: 87px;
			height: 24px;
			margin-right: 5px;
			text-align: center;
			line-height: 24px;
			border: 1px solid #4a73a8;
			font-size: 12px;
			color: #fff;
			background-color: #7097c3;
		}

		a.blue2:hover {
			border: 1px solid #4a73a8;
			color: #fff;
			text-decoration: none;
		}



		/* 페이징 컨트롤 오른쪽의 파란 버튼 */

		/* common */

		.fl {
			float: left;
		}

		.fr {
			float: right;
		}

		.cl {
			clear: both;
		}

		.txtl {
			text-align: left;
		}

		.txtr {
			text-align: right;
		}

		.txtc {
			text-align: center;
		}



		.wrap {
			width: 100%;
			min-height: 100%;
			height: 660px;
			padding: 0px 0 0px;
			position: relative;
			clear: both;
			box-sizing: border-box;
			/*background: url("/resource/images/bg_dooit.jpg") no-repeat left 0px;*/
			display: block;
			float: left;
			margin: 0 0 0px 0;
		}

		.topdiv {
			float: left;
			width: 1198px;
			height: 105px;
			position: relative;
		}

		.leftdiv {
			float: left;
			width: 183px;
			height: 550px;
			position: relative;
		}

		.div-overflow-container {
			margin-bottom: 2px;
			overflow-x: auto;
			overflow-y: auto;
			padding-bottom: 0px;
			position: fixed !important;
			top: 105px;
			left: 180px !important;
			bottom: 0px;
			width: 1000px;
			padding: 10px;
			height: 1060px;
			-webkit-overflow-scrolling: touch;
			box-sizing: border-box;
			-o-box-sizing: border-box;
			-ms-box-sizing: border-box;
			-moz-box-sizing: border-box;
			-webkit-box-sizing: border-box;
		}

		ul.cate_wrap {
			position: absolute;
			top: -5px;
			left: 10px;
			font-family: Dotum, '돋움', Arial, sans-serif;
			padding-left: 0px;
		}

		ul.cate_wrap li {
			float: left;
			list-style: none;
		}

		ul.cate_wrap li.home {
			width: 10px;
			text-indent: -9999px;
			background: url('/resource/images/ico_home.png') no-repeat 0 4px;
		}

		ul.cate_wrap li.arrow {
			padding: 0 6px;
		}

		ul.cate_wrap li.on {
			font-weight: bold;
		}

		ul.cate_wrap li a {
			display: block;
			color: #737373;
		}


		table {
			width: 100%;
			border-top: none;
		}

		table caption {
			position: static;
		}

		table th {
			height: 34px;
			padding-left: 10px;
			text-align: left;
			font-size: 12px;
			color: #505050;
		}

		table td {
			padding: 5px 7px;
			text-align: left;
			font-family: Dotum, '돋움', Arial, sans-serif;
		}

		.table-line {
			border: 1px solid #d9d9d9;
			float: left;
			width: 100%;
		}

		div.table_process {
			clear: both;
			width: 100%;
			border-top: 2px solid #7a7a7a;
			position: relative;
			float: left;
		}

		div.table_process table {
			width: 100%;
			border: 1px solid #d9d9d9;
			border-top: none;
		}

		div.table_process table caption {
			position: static;
		}

		div.table_process table tr.top th,
		div.table_process table tr.top td {
			border-top: none;
		}

		div.table_process table th {
			width: 140px;
			height: 34px;
			border: 1px solid #d9d9d9;
			background: #F6F6F6;
			margin-bottom: 3px;
			text-align: center;
			font-size: 13px;
			color: #505050;
		}

		div.table_process table th.bullet_orange {
			background: url('/resource/images/bullet_orange.png') #F6F6F6 15px 50% no-repeat;
		}

		div.table_process table td {
			border: 1px solid #d9d9d9;
			padding: 5px 4px;
			text-align: center;
			font-family: Dotum, '돋움', Arial, sans-serif;
		}


		div.table_process table .le {
			text-align: left;
		}

		div.table_process table .ri {
			text-align: right;
		}

		div.table_process table .bg {
			background: #F6F6F6;
		}

		div.table_process table td.txt_line {
			padding-left: 16px;
		}

		div.table_process table .bnone {
			border-bottom: 1px solid #d9d9d9;
			border-right: 1px solid #fff;
			background: #fff;
		}

		div.table_process table tfoot th {
			background: #F6F6F6;
			font-weight: bold;
			height: 34px;
		}

		div.table_process table tfoot td {
			background: #F6F6F6;
			font-weight: bold;
			height: 34px;
			text-align: center;
		}

		/* The Modal (background) */
		.modal {
			display: none; /* Hidden by default */
			position: fixed; /* Stay in place */
			z-index: 1; /* Sit on top */
			left: 0;
			top: 0;
			width: 100%; /* Full width */
			height: 100%; /* Full height */
			overflow: auto; /* Enable scroll if needed */
			background-color: rgb(0,0,0); /* Fallback color */
			background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		}

		/* Modal Content/Box */
		.modal-content {
			background-color: #fefefe;
			margin: 15% auto; /* 15% from the top and centered */
			padding: 20px;
			border: 1px solid #888;
			width: 50%; /* Could be more or less, depending on screen size */
			height: auto;
		}
		/* The Close Button */
		.close {
			color: #aaa;
			float: right;
			font-size: 28px;
			font-weight: bold;
		}
		.close:hover,
		.close:focus {
			color: black;
			text-decoration: none;
			cursor: pointer;
		}

	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">

		var map, marker;
        // When the user clicks on the button, open the modal
        function openModal(latObj, lngObj, devIdObj, rcvDtObj, exactRateObj) {
//            document.demoFrm.lat.value = $(obj).children("td[name='lat']").text();
//            document.demoFrm.lng.value = $(obj).children("td[name='lng']").text();
            document.demoFrm.lat.value = latObj;
            document.demoFrm.lng.value = lngObj;

            var devImg = devIdObj + "_" + rcvDtObj + ".jpg";
            $("#myModal").find("#devImg").attr("src", "/resource/images/data/" + devImg);
            $("#myModal").find("#devImgName").text(devImg);
            if (exactRateObj != undefined && exactRateObj != ""){
                $("#myModal").find("#exactRate").text(exactRateObj);
			}else{
                $("#myModal").find("#exactRate").text("");
			}

			initMap();

            document.getElementById("myModal").style.display = "block";
        }

        function initMap()
        {
            var latVal = new Number(document.demoFrm.lat.value);
            var lngVal = new Number(document.demoFrm.lng.value);
            var myLatLng = {lat: latVal.valueOf(), lng: lngVal.valueOf()};
            map = new google.maps.Map(document.getElementById('google_map'), {
                center: myLatLng,
                zoom: 17
            });

            marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                title: 'Here!'
            });
        }

        // When the user clicks on <span> (x), close the modal
        function closeModal(obj) {
            document.getElementById("myModal").style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == document.getElementById("myModal")) {
                document.getElementById("myModal").style.display = "none";
            }
        }


	</script>
	<script async defer type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBBsjtNIlz4VKhqICNNLWkzpD7bYFNj5Ds&callback=initMap"></script>
</head>



<body>
<form id="demoFrm" name="demoFrm">
	<input type="hidden" id="lat" name="lat" value="" />
	<input type="hidden" id="lng" name="lng" value="" />
</form>

	<!-- contents -->
	<div class="wrap bg_none">
		<div class="topdiv"></div>
		<div class="leftdiv"></div>
		<div class="div-overflow-container">
			<!--
			<ul class="cate_wrap">
				<li class="home"><a href="#" title="home">home</a></li>
				<li class="arrow">&gt;</li>
				<li><a href="#" title="분석">분석</a></li>
				<li class="arrow">&gt;</li>
				<li class="on" style="display: block;"><a href="#" title="장비운영조회">장비운영조회(sce:sce0210.xldl)</a></li>
			</ul>
			<div class="fr">
				<a href="#" title="검토담당자" class="blue">화면캡쳐</a>
				<a href="#" title="저장" class="blue">FAQ</a>
				<a href="#" title="목록" class="blue">도움말</a>
			</div>

			<div style="float:right; text-align: right;width:100%; margin-top:20px">
				<a href="#" title="목록" class="blue2" style="float:right; margin-right:-2px;">조회</a>
			</div>
			-->
			<div class="search_form_wrap">
				<!--
				<div class="table-line" style="margin-top:20px;">
					<table style="width:100%;">
						<col width="90px">
						<col width="*">
						<col width="90px">
						<col width="*">
						<col width="90px">
						<col width="*">
						<caption></caption>
						<tbody>
							<tr>
								<th>운행일</th>
								<td class="tl"><span style="float:left;"><img src="/resource/images/day.jpg" /></span><span style="float:left;"> ~ </span><span style="float:left;"><img src="/resource/images/day.jpg" /></span></td>
								<th>장비유형</th>
								<td class="tl">
									<select style="width:170px; ">
	        					<option></option>
	        					<option></option>
	    						</select>
								</td>
								<th>차량번호</th>
								<td class="tl">
									<select style="width:170px;">
	        					<option></option>
	        					<option></option>
	    						</select>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				-->
			<h1>DEMO-V2</h1>

			</div>

			<div class="table_process" style="margin-top:20px;">
				<table>
					<caption>첨부파일</caption>
					<colgroup>
						<col width="100px">
						<col width="190px">
						<col width="190px">
						<col width="250px">
						<col width="90px">
						<col width="90px">
					</colgroup>
					<thead>
						<tr>
							<th class="bg_none">그룹코드</th>
							<th>코드ID</th>
							<th>코드명</th>
							<th>코드설명</th>
							<th>정렬순서</th>
							<th>사용유무</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="item" items="${codes}" varStatus="status">
						<tr>
							<td>${item.fileId}</td>
							<td>${item.fileType}</td>
							<td>${item.fileNm}</td>
							<td>${item.filePath}</td>
							<td>${item.resv5}</td>
							<td>${item.resv4}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
	</div>

</body>

</html>
