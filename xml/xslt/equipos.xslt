<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<html>
        <head>
            <title>Pinches equipo</title>
            <style>
                   .foto {
            width:300px;
            height:250px;
            }
body
{
    background-image:url(../fotos/fondo2.svg);
    font-family: 'Trebuchet MS', Arial, sans-serif;
    color: #181818;
    margin-left: 15PX;
}

#contenedor_principal
{
    width: 100%;
    margin: auto;
    padding-left: 20px;
   
}

section h1, nav a
{

    font-weight: normal;
    text-transform: uppercase;
}

header
{
    background-image: url(../fotos/banner.svg);
    background-size: cover;
    background-repeat: no-repeat;
    text-align: center;
    width: 97.2%;
    border-color: blue;
    border-radius: 0.25rem;
    

}

.titulo_principal
{
    display: inline-block;
}

header h1
{
  
    font-size: 5em;
    font-weight: normal;
    color:white;
}

#logo, header h1
{
    display: inline-block;
    margin-bottom: 0px;
    color:white;
    
    
}
header h2
{
    font-size: 1.1em;
    margin-top: 0px;
    font-weight: normal;
    color: red;
}


nav
{
    display: inline-block;
    width: 80%  ;
    text-align: right;
}

nav ul
{
    list-style-type: none;
}

nav li
{
    display: inline-block;
    margin-right: 15px;
}

nav a
{
    font-size: 1.3em;
    color: #f70000;
    padding-bottom: 3px;
    text-decoration: none;
}

nav a:hover
{
    color: #760001;
    border-bottom: 3px solid #760001;
}
th
{
    font-size: 1.3em;
    color: #f70000;
    padding-bottom: 3px;
    text-decoration: none;
}
tr
{
    font-size: 1.3em;
    color: #f70000;
    padding-bottom: 3px;
    text-decoration: none;
}
table
{
    margin:auto;
    text-alling:center;
}
            </style>
        </head>
        <body>
            <main>
              <div id="contenedor_principal">
            <header>
                <div id="titulo_principal">
                    <img src="../fotos/logo.svg" alt="cartas" id="logo" />
                    <h1 id="header h1">World Series Of Poker</h1>
                    <h2>Juega con moderación</h2>
                </div>
                
                <nav>
                    <ul>
                        <li><a href="./xmltorneos.xml">Torneos</a></li>
                        <li><a href="./xmljugadores.xml">Jugadores</a></li>
                        <li><a href="./equipos.xml">Equipos</a></li>
			            <li><a href="../index.html">Principal</a></li>
                    </ul>
                </nav>
            </header>
        </div>

                <table border="2" >
		   <tr>
                    <th>Nombre</th>
                    <th>Enlace</th>
                    <th>Foto</th>
                  </tr>
                    <xsl:for-each select="liga/equipo">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="enlace"/>
                            </td>
                            <td><img class="foto">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto3"/>
                                </xsl:attribute>
                                </img>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </main>
        </body>

        </html>
	</xsl:template>
</xsl:stylesheet>
