<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>
<%@ include file="template/style.css" %>

<script>

function submit_func(){

//exec("python /home/praktikant/oralhealth2/script/db_connect.py");

//$.ajax({
//   url: "/home/praktikant/oralhealth2/script/db_connect.py",
//   success: function(response){
     //here you do whatever you want with the response variable
//)   }
//});
	
//$.ajax({
//	  type: "POST",
//	  url: "/home/praktikant/oralhealth2/script/db_connect.py",
	  //data: { param: text}
//	});//.done(function( o ) {
	   // do something
	//});
	
alert("foobar!");


var xhr = new XMLHttpRequest();
xhr.open("GET", "/home/praktikant/oralhealth2/script/db_connect.py", true);
xhr.responseType = "JSON";
xhr.onload = function(e) {
  var arrOfStrings = JSON.parse(xhr.response);
  for (int i =0; i < arrOfStrings.length; i++){
	  alert(arrOfStrings[i]);
	  
  }
}
xhr.send();
	
	
	
}

</script> <!-- doesn't seem to work D: -->


<openmrs:htmlInclude file="/scripts/calendar/calendar.js" />

<html>
<!-- <head>
	<script type="text/javascript" src="MySQLConnection.js"></script>
</head> -->
<body>
<htmlform>
<style>@media print {
	input[type="text"] {border: none;}
	.content{overflow:hidden;
	margin-top:-8%;
	}
	img,.navList, #userBar, img.logo-reduced61, #htmlFormEntryBanner, #footer{display:none;}
	input[type=button] {display: none;}
	a.infobox{text-decoration:none; color:#000;}
</style>
<style>
table{border-collapse:collapse}
</style>

<form method="post">

<fieldset style="width:1115px;">
<div class="left">
    <label for="patientname">PATIENT NAME </label><br/>
    <input id="patientname" type="text" name="patientname" size="30" /><br />
    <label for="birthdate">BIRTHDATE </label><br/>
    <input id="birthdate" type="text" name="birthdate" size="30" onClick="showCalendar(this)"/><br />
    <label for="residence">PLACE OF RESIDENCE </label><br/>
    <input id="residence" type="text" name="residence" size="30" />
 </div>
 
 <div class="middle">
    <label for="date">EXAMINATION DATE </label><br/>
    <input id="date" type="text" name="date" size="30" onClick="showCalendar(this)"/><br/>
    <label for="city">CITY: </label><br/>
    <input id="city" type="text" name="city" size="30" />
 </div>
 
 <div class="right">
 	 <label for="name">DOCTOR NAME </label><br/>
    <input id="name" type="text" name="name" size="30" /><br />
    <label for="signature">SIGNATURE</label><br/><br/><br/> 
    <hr>
 </div>
</fieldset>

<fieldset style="width:1115px;">
<div class="dental">
	<h4>DENTAL STATUS</h4>
	<hr>
	<table border="1" width="1050px;">
	 <tbody>
			<tr>
				<td>
					<a class="infobox" title="Periodontal Screening Index"><span style="font-size:10px;">PSI*</span></a>
				</td>
				<td colspan="5" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 18 to 14: Code 0(GOOD/HEALTHY)... Code4(BAD/ILL)">PSI 18-14_</a>
					<select conceptId="6124" id="treat_18-13" defaultValue="6119">
		           		<option>0</option>
                   		<option>1</option>
                   		<option>2</option> 
                   		<option>3</option>
                   		<option>4</option>
                   	</select>
                   	</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td colspan="6" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 13 to 23: Code 0(GOOD/HEALTHY)... Code4(BAD/ILL)">PSI 13-23_</a>
					<select conceptId="6125" id="treat_12-23" defaultValue="6119">
						<option>0</option>
						<option>1</option>
						<option>2</option> 
						<option>3</option>
						<option>4</option>
					</select>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td colspan="5" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 24 to 28: Code 0(GOOD/HEALTHY)... Code4(BAD/ILL)">PSI 24-28_</a>
					<select conceptId="6126" id="treat_24-28" defaultValue="6119">
						<option>0</option>
						<option>1</option>
						<option>2</option> 
						<option>3</option>
						<option>4</option>
					</select>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td>
					<p><span style="font-size:10px;">TREATMENT</span></p>
				</td>
				<td>
					<a title="Choose for treatment for tooth 18: N=None, EX=Extraction, RCT=Root Canal Treatment, F=Filling"><span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="28aa690f-bf0d-4aa0-acee-c7fa4db1baeb" defaultValue="1101">
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option> 
					</select></span></a>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6344" id="treat_17" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
				<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6340" id="treat_16" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6294" id="treat_15" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6370" id="treat_14" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6331" id="treat_13" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6312" id="treat_12" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6299" id="treat_11" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>                                
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6372" id="treat_21" defaultValue="1101">
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>                                 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6348" id="treat_22" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>                                   
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6399" id="treat_23" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>                           
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6333" id="treat_24" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
						</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6355" id="treat_25" defaultValue="1101">
						<option>N</option>
						<option>EX</option>
						<option>RCT</option>
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="109e7d8f-32bf-4528-9131-fb278541f472" id="treat_26" defaultValue="1101">
						<option>N</option>
						<option>EX</option>
						<option>RCT</option>
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="63d16ed8-723b-40f2-9fba-acd88c16437b" id="treat_27" defaultValue="1101">
						<option>N</option>
						<option>EX</option>
						<option>RCT</option>
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="bbbc1536-933e-4794-adca-ac8643298295" id="treat_28" defaultValue="1101">
						<option>N</option>
						<option>EX</option>
						<option>RCT</option>
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td>
					<p><span style="font-size:10px;">STATUS</span></p>
				</td>
				<td>
					<a title="Choose for tooth 18: H=Health, D=Decayed, F=Filled, M=Missing"><span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="e7eb65cc-b80e-43c2-84c9-9554c2b06863" id="1.8" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option>
					</select></span></a>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="42c03f3b-89b8-4656-bbe1-ae966b9d88d2" id="1.7" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="fd743910-f077-4b92-81eb-82f6dab03472" id="1.6" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="d5f9a5c8-112b-4973-b9c3-1706f40d62dd" id="1.5" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="972518e3-fe62-4cf6-90f9-72609de97220" id="1.4" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="dccde639-4737-4523-bc06-e3d29d1a3c63" id="1.3" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="bf3e73c5-9b05-459b-9632-1e5ce48cb841" id="1.2" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="a37aa7c4-8174-4e3e-a3c2-60611dced4c5" id="1.1" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="17dbcefd-b0ae-4d48-a5b6-c8ced76c201e" id="2.1" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="8e334b8a-30b5-4437-a95d-f561899cf090" id="2.2" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="a00186b0-0365-4b99-a7ad-978bfa814858" id="2.3" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="9be2e5cc-2339-4bb1-98d3-ab371001f26d" id="2.4" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="b95ea533-10ea-415e-8ac6-b0151371aad6" id="2.5" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="716e0404-4303-452f-9717-25a4d02a663b" id="2.6" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="db414ca8-7467-4a0f-b048-a210881b87ed" id="2.7" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="5d945834-b45b-4461-b693-3d93f5239f85" id="2.8" defaultValue="6218">
						<option>H</option>
						<option>D</option>
						<option>F</option>
						<option>M</option> 
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td><span style="font-size:10px;">DECIDUOUS TEETH</span></td>
				<td style="border-right-style:none;"></td>
				<td style="border-left-style:none;border-right-style:none;"></td>
				<td  style="border-left-style:none;"></td>
				<td style="text-align: center;">
						<span style="font-size:10px;">55</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">54</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">53</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">52</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="text-align: center; border-right-width: medium; border-style:solid;">
						<span style="font-size:10px;">51</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">61</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">62</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">63</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">64</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">65</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="c439524b-5e37-4a9c-8825-e9264b31b6db" style="checkbox"></span>
				</td>
				<td style="border-right-color:#FFFFFF;"></td>
				<td style="border-right-color:#FFFFFF;"></td>
				<td>
				</td>
			</tr>
			<tr>
				<td rowspan="2"><span style="font-size:10px;">PERMANENT TEETH</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">18</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<p style="text-align: center;"><span style="font-size:10px;">17</span></p>
				</td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<p style="text-align: center;"><span style="font-size:10px;">16</span></p>
				</td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<p style="text-align: center;"><span style="font-size:10px;">15</span></p>
				</td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<p style="text-align: center;"><span style="font-size:10px;">14</span></p>
				</td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">13</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">12</span></td>
				<td style="text-align: center; border-bottom-width: medium;  border-style:solid; border-right-width:medium; border-style:solid">
					<span style="font-size:10px;">11</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">21</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">22</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">23</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">24</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">25</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">26</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">27</span></td>
				<td style="text-align: center; border-bottom-width: medium; border-style:solid; ">
					<span style="font-size:10px;">28</span></td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<span style="font-size:10px;">48</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">47</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">46</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">45</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">44</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">43</span></td>
				<td>
					<p style="text-align: center;">
						<span style="font-size:10px;">42</span></p>
				</td>
				<td style="text-align: center; border-right-width: medium; border-style:solid;">
					<span style="font-size:10px;">41</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">31</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">32</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">33</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">34</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">35</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">36</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">37</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">38</span></td>
			</tr>
			<tr>
				<td>
					<span style="font-size:10px;">DECIDUOUS TEETH</span></td>
				<td style="border-right-style:none;">
				</td>
				<td style="border-left-style:none;border-right-style:none;">
				</td>
				<td  style="border-left-style:none;">
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">85</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">84</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">83</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">82</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="text-align: center; border-right-width:medium; border-style: solid">
						<span style="font-size:10px;">81</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
						<span style="font-size:10px;">71</span><br/>
						<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
					<span style="font-size:10px;">72</span><br/>
					<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
					<span style="font-size:10px;">73</span><br/>
					<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
					<span style="font-size:10px;">74</span><br/>
					<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="text-align: center;">
					<span style="font-size:10px;">75</span><br/>
					<span style="font-size:10px;"><input type="checkbox" name="Zahlmethode" value="" answerConceptId="df9a75f8-af51-11e3-9792-0c84dcf2d904" answerLabel="" conceptId="0b3863f1-d2cb-4d0c-ae94-0317883651be" style="checkbox"></span>
				</td>
				<td style="border-right-style:none;">
				</td>
				<td style="border-left-style:none;border-right-style:none;">
				</td>
				<td  style="border-left-style:none;">
				</td>
			</tr>
			<tr>
				<td>
					<p><span style="font-size:10px;">STATUS</span></p>
				</td>
				<td>
					<span style="font-size:10px;"><a title="Choose for tooth 48: H=Health, D=Decayed, F=Filled, M=Missing"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="61ac6b5b-8f5e-4042-a049-4d2f98542c85" id="4.8" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></a></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="cdd9a1cb-2999-4602-b8b6-270d98e661a0" id="4.7" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="d42ce879-02de-4edf-96db-7a71b3c9c7b4" id="4.6" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="b6afa216-371e-46ee-a67a-a22c4471b8b9" id="4.5" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="bb059d69-a78c-40f6-b18c-6e2724fa7a86" id="4.4" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="875b2e51-2c33-4b1a-898f-1f2cc3c35695" id="4.3" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="2f59d155-e11c-46a4-ba88-685d464097d1" id="4.2" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="db05359e-7177-453d-8b57-ca11cf099bb4" id="4.1" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="bbbf29c1-fe9d-44a7-8649-8592291d79cd" id="3.1" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="b7d60bfa-5321-4fe6-bc18-14efada64b1c" id="3.2" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="64a2375d-2846-4d62-bafa-b5164d22f09e" id="3.3" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>	
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="a2269d63-d7df-41ab-89f9-4bb7e4acc228" id="3.4" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="ca9d360c-39cb-43b9-9ab2-0a3991496e3a" id="3.5" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p>
						<span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="a4dc3ec8-2dd9-4d9a-9cc8-a14f1df0b605" id="3.6" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="6a4700d8-c3c4-47c9-aa44-8607a9f5c8b8" id="3.7" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="6218,6155,6157,6156" answerLabels="H,D,M,F" conceptId="da0442ea-c13b-4dd4-9898-028618b612fa" id="3.8" defaultValue="6218"><option>H</option><option>D</option><option>F</option><option>M</option> </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td>
					<p><span style="font-size:10px;">TREATMENT</span></p>
				</td>
				<td>
					<span style="font-size:10px;"><a title="Choose for treatment for tooth 48: N=None, EX=Extraction, RCT=Root Canal Treatment, F=Filling">
					<select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6dfc296c-a5cb-465a-9c16-7d4c9a2996e9" id="treat_48" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>        
					 </select></a></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="38aff031-93cc-4199-9a22-11d7e6a14c11" id="treat_47" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="19347f6e-bfb9-4414-a8ff-b4726f83cc84" id="treat_46" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="8fdae0ac-46fa-4d29-bc17-9e4f2db75add" id="treat_45" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p>	<span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="6ce45845-4827-488a-91da-f3558996271f" id="treat_44" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>                                          
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="dc9cc754-8330-421d-9ebb-2662f5b9fb3a" id="treat_43" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="e40ef50f-234a-4eb1-9dad-8c3a9fbf2fd3" id="treat_42" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
   	                </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="9b65b97f-a4d8-4eb8-883f-84a1a01e0683" id="treat_41" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
  	                </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="48772ca5-5257-4e58-b501-dcc453f2d8c3" id="treat_31" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="b0b26c80-5eeb-4375-8222-c6214abf0c3a" id="treat_32" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
   	                </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="cf928fdc-c44b-4266-8762-d3c2c7ee3fcc" id="treat_33" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
   	               </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="902f88b4-de1b-424c-89d7-183d778fc72c" id="treat_34" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
   	                </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="016b3d34-683e-4040-ae93-de7e1a107b1b" id="treat_35" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
   	                </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="fcfa4c6f-60a0-47e9-87d4-9558d7822a46" id="treat_36" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="3edb6c35-cd13-4cce-bc7b-c5ecc922ed07" id="treat_37" defaultValue="1101">
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
   	                </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;"><select answerConceptIds="1101,6100,6101,6102" answerLabels="N,EX,RCT,F" conceptId="acb50e0b-804c-46c7-8bd5-6d4d5959f5ff" id="treat_38" defaultValue="1101"> 
						<option>N</option>
						<option>EX</option>
						<option>RCT</option> 
						<option>F</option>
   	                </select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td><span style="font-size:10px;">PSI*</span></td>
				<td colspan="5" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 48 to 44: Code 0(GOOD/HEALTHY)... Code4(BAD/ILL)">PSI 48-44_</a>
					<select conceptId="6127" id="treat_48-44" defaultValue="6119">
						<option>0</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td colspan="6" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 43 to 33: Code 0(GOOD/HEALTHY)... Code4(BAD/ILL)">PSI 43-33_</a>
					<select conceptId="6128" id="treat_43-33" defaultValue="6119">
						<option>0</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td colspan="5" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 34 to 38: Code 0(GOOD/HEALTHY)... Code4(BAD/ILL)">PSI 34-38_</a>
					<select conceptId="6129" id="treat_34-38" defaultValue="6119">
						<option>0</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td style="border-top-width:medium; border-style: solid;" colspan="2"><span style="font-size:10px;"><h4>LEGEND</h4></span></td>
				<td style="border-top-width:medium; border-style: solid;" colspan="5"><span style="font-size:10px;"><h4>Status of tooth:</h4>
					<span style="font-size:10px;"> H=Healthy, D=Decayed, M=Missing, F=Filled </span></span></td>
				<td style="border-top-width:medium; border-style: solid;" colspan="5"><span style="font-size:10px;"><h4>Treatment for tooth:</h4>
					<span style="font-size:10px;"> N=None, EX= Extraction, RCT= Root Canal Treatment, F=Filling</span></span></td>
				<td style="border-top-width:medium; border-style: solid;" colspan="5"><span style="font-size:10px;"><h4>PSI</h4>
					<span style="font-size:10px;">Periodontal Screening Index= Code 0 (healthy) ... Code 4 (ill)</span></span></td>
			</tr>
		</tbody>
	</table>
</div>
</fieldset>

<fieldset style="width:1115px;">
<div class="header">
	<table><tbody><tr><td style="width:706px;"><h4>ORAL MUCOSA</h4>
	</td><td><h4>OTHER INFORMATION</h4></td></tr></tbody></table>
<hr>
</div>
<div class="second_left">
	<label for="lips">LIPS</label><br/>
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea cols="30" rows="3"></textarea></a><br/>
	<label for="hard palate">HARD PALATE</label><br/>
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea cols="30" rows="3"></textarea></a><br/>
	<label for="soft palate">SOFT PALATE</label><br/>
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea cols="30" rows="3"></textarea></a><br/>
	<label for="uvula">UVULA</label><br/>
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea cols="30" rows="3"></textarea></a><br/>
</div>

<div class="second_middle">
	<label for="gum">GUM</label><br/>
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea cols="30" rows="3"></textarea></a><br/>
	<label for="tonsil">TONSIL</label><br/>
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea cols="30" rows="3"></textarea></a><br/>
	<label for="tongue">TONGUE</label><br/>
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea cols="30" rows="3"></textarea></a><br/>
	<label for="other notices">OTHER NOTICES</label>
	<textarea cols="30" rows="3"></textarea>
</div>

<div class="second_right">
	<label for="knows diseases">KNOWN DISEASES</label><br/>
	<textarea cols="30" rows="3" maxlength="30"></textarea><br/>
	<label for="drugs">DRUGS</label><br/>
	<textarea cols="30" rows ="3" maxlength="30"></textarea><br/>
	<label for="SMOKING">SMOKING</label><br/>
	<select conceptId="6375" id="SMOKING">
		<option>No</option>
		<option>More than 15/d</option>
		<option>Less than 15/d</option>
	</select>
</div>
</fieldset>
	<input type="button" value="Submit" onClick="submit_func()"/>
</form>
</htmlform>
</body>
</html>

<%@ include file="/WEB-INF/template/footer.jsp"%>