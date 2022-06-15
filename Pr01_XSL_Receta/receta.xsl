<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="receptes/recepta"> 
    <xsl:choose>
        <xsl:when test="@id = '1'">
        <html>
            <head>
                <link href="Pr3_rubenArandaReceta.css" rel="stylesheet" charset="UTF-8" />  

                <link href="Pr3_rubenArandaEstilo.css" rel="stylesheet" charset="UTF-8" />  

                <title><xsl:value-of select="nom"/></title>
            </head>
            <body>
                <figure class="Logo"><img src="Logo-Delicias.png" alt="Logo-Delicias"/></figure>

                <nav class="nav_global">
                    <ul>
                        <li><a href="index.html">INICIO</a></li>
                        <li><a href="#">SOBRE MI</a></li>
                        <li><a href="listado/listado.html">RECETAS</a></li>
                        <li><a href="contacto/contacto.html">CONTACTO</a></li>
                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">OTRAS COSAS</a></li>
                    </ul>
                </nav>
                
            </body>

            <section class="cabecera">
                <article>
                    <h4>
                        <xsl:value-of select="nom"/>
                    </h4>

                    <hr class="rounded"/>
                </article>
            </section>

            <aside>
                <h3>Sobre mi</h3>
                <hr class="rounded"/>
                <figure class="perfil"><img src="isagil.png" alt="perfil"/></figure>
                <p>Hola,bienvenid@ a mi blog, un espacio donde comparto mis recetas vegetarianas y veganas favoritas.</p>
                <section class="rss">
                    <figure class="facebook"><a href="https://www.instagram.com/?hl=es"><img src="facebook_social_media_icon_187125.png" width="35" height="35" alt="facebook"/></a></figure>
                    <figure class="twitter"><img src="circlesocialtwitter_101913.png" width="35" height="35" alt="twitter"/></figure>
                    <figure class="instagram"><img src="circlesocialinstagram_101831.png" width="35" height="35" alt="instagram"/></figure>
                    <figure class="pinterest"><img src="circlesocialpinterest_101887.png" width="35" height="35" alt="pinterest"/></figure>
                </section>
            </aside>

            <section class="resumen">
                <xsl:apply-templates select="informacio_general"/>
            </section>

            <section class="receta">
                <xsl:apply-templates select="ingredients"/>
                <article class="preparacio">
                    <xsl:apply-templates select="preparacio"/>
                </article>
            </section>

            <footer>
                <ul>
                    <li><a href="https://www.facebook.com/">Facebook</a></li>
                    <li><a href="https://twitter.com/?lang=es">Twitter</a></li>
                    <li><a href="https://www.instagram.com">Instagram</a></li>
                    <li><a href="https://www.pinterest.es">Pinterest</a></li>
                    <li><a href="https://www.google.com/intl/es/gmail/about/">Email</a></li>
                    <li><a href="#">RSS</a></li>
                </ul>
            </footer>
        </html>
         </xsl:when>
</xsl:choose>
    </xsl:template>

    <xsl:template match="informacio_general">
        <article>
            <h4><xsl:value-of select="../nom"/></h4>
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="foto/text()"/>
                </xsl:attribute>
            </img>
        </article>
        <article>
            <ul>
                <li><xsl:value-of select="enllaç"/></li>
                <li><p>Comensals</p><xsl:text> </xsl:text><xsl:value-of select="comensals"/></li>
                <li><p>Temps:</p><xsl:text> </xsl:text><xsl:value-of select="temps"/></li>
                <li><p>Dificultat:</p><xsl:text> </xsl:text>><xsl:value-of select="dificultat"/></li>
            </ul>
            <p><xsl:value-of select="resum"/></p>
        </article>
    </xsl:template>

    <xsl:template match="ingredients">
        <article class="ingredientes">
            <h4>INGREDIENTES</h4>
                <ul>
                <xsl:for-each select="ingredient">
                    <li>
                        <xsl:value-of select="@quantitat"/><xsl:text> </xsl:text>
                        <xsl:value-of select="@unitat"/><xsl:text> </xsl:text>
                        <xsl:value-of select="."/>
                    </li>
                    </xsl:for-each>
                </ul>
            
        </article>
    </xsl:template>

    <xsl:template match="preparacio">
        <h4>ELABORACIÓN PASO A PASO</h4>
        <ol>
        <xsl:for-each select="pas">
            <li>
                <xsl:value-of select="."/>
            </li>
            </xsl:for-each>
        </ol>
        
    </xsl:template>
</xsl:stylesheet>