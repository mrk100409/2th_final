<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <style>
        th{
            display:table-cell;
            vertical-align:inherit;
            font-weight:bold;
            text-align:center;
            border:1px solid black;
        }
        table{
            border:1px solid black;
            text-align : center;
        }
        td{
            border:1px solid black;
        }
    </style>
<body>

<h1>회원 플러스 소개</h1>
<table>
            <tr>
                <th>등급 번호</th>
                <th>등급명</th>
                <th>등급별 혜택</th>
            </tr>
            <tr>
                <td>1</td>
                <td>준회원</td>
                <td>자신의 업종 커뮤니티 입장 가능</td>
            </tr>
            <tr>
                <td>2</td>
                <td>준회원 +</td>
                <td>자신의 업종 뿐만 아니라 모든 업종의 커뮤니티 이용권</td>
            </tr>
            <tr>
                <td>3</td>
                <td>정회원</td>
                <td>자신의 기업 커뮤니티 이용권, 자신의 업종 커뮤니티 이용권</td>
            </tr>
            <tr>
                <td>4</td>
                <td>정회원 + </td>
                <td>자신의 기업 커뮤니티 이용권, 자신의 업종 뿐만 아니라 모든 업종의 커뮤니티 이용권</td>
            </tr>
         </table>
         
         <br><br>
         <hr>

<h1>등급 업그레이드 결제</h1>
<h4>준회원, 정회원만 결제 후 + 등급이 되실 수 있습니다.</h4>

<form action="upgrade" method="post">
	<div class="row text-left">
		<label> 회원 플러스 </label> <!-- 상품의 이름 -->
	</div>
		<input type="hidden" name="item_name" value="회원 플러스">
	<div class="row text-left">
		<label>주문 수량</label><!-- 주문 수량  -->
		<input type="number" name="quantity" value="0" max="1" required>
	</div>
		<input type="hidden" name="total_amount" value="5000">
	<div class="row">
			<input type="submit" value="결제" class="form-btn form-btn-positive">
	</div>
</form>