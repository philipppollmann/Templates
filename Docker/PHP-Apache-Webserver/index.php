<?php
echo "<div background-color: red; width: 100%>Test</div>";
echo "<h1>Hello World</h1>";
echo "<h2>Willkommen aus dem Docker Container</h2>";

if (function_exists('sqlsrv_connect')) {
    echo "Die Funktion 'sqlsrv_connect' ist verfügbar.";
} else {
    echo "Die Funktion 'sqlsrv_connect' ist nicht verfügbar.";
}

echo "<h2>Ende des Contaienrs</h2>";
?>