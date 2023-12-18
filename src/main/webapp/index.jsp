<html>
<body>
    <h2>Jersey RESTful Web Application!</h2>
    <p><a href="webapi/home">Jersey resource</a>
    <p>Visit <a href="http://jersey.java.net">Project Jersey website</a>
    for more information on Jersey!
    <br>
    <br>
    <h1>Simple Calculator</h1>
    <p>Enter two numbers to perform addition and subtraction:</p>
    <input type="text" id="num1" placeholder="Enter first number">
    <input type="text" id="num2" placeholder="Enter second number">
    <br>
    <br>
    <button onclick="addition()">Addition</button>
    <br>
    <br>
    <button onclick="subtraction()">Subtraction</button>

    <p>Result:</p>
    <p id="Result"></p>

    <script>
            let URL = "http://localhost:8080/NewRestAPI/webapi/home/";
            function addition() {
                var num1 = parseInt(document.getElementById("num1").value);
                var num2 = parseInt(document.getElementById("num2").value);
                if (isNaN(num1) || isNaN(num2)){
                    alert("Please enter valid numbers");
                    return;
                }
                URL +="add"+"?"+"op1="+num1+"&"+"op2="+num2;
                alert(URL);
                //console.log(URL);
                /*fetch(URL).then(response => {
                        if (!response.ok) {
                            throw new Error('Network response was not ok');
                        }
                        return response.json();})
                        .then(data =>{
                            console.log(data);
                            document.getElementById('Result').innerHTML = JSON.stringify(data, null, 2)
                        }).catch(error => {
                        console.error('There was a problem with the fetch operation:', error);
                    });*/
                var xmlhttp1 = new XMLHttpRequest();
                xmlhttp1.onreadystatechange = function(){
                    if(xmlhttp1.readyState!=4) return;
                    console.log(xmlhttp1.responseText);
                }
                xmlhttp1.open("GET",URL,true);
                xmlhttp1.send(null);
            }
            function subtraction() {
                var num1 = parseInt(document.getElementById("num1").value);
                var num2 = parseInt(document.getElementById("num2").value);

                if (isNaN(num1) || isNaN(num2)){
                    alert("Please enter valid numbers");
                    return;
                }
                URL +="sub"+"?"+"op1="+num1+"&"+"op2="+num2;
                var xmlhttp2 = new XMLHttpRequest();
                xmlhttp2.onreadystatechange = function(){
                    if(xmlhttp2.readyState!=4) return;
                    console.log(xmlhttp2.responseText);
                }
                xmlhttp2.open("GET",URL,true);
                xmlhttp2.send(null);
            }
        </script>
</body>
</html>
