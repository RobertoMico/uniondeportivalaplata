<%-- 
 Copyright (C) July 2014 Rafael Aznar

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
--%>

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>

<%
    int id_tipousuario = 0, id_usuario = 0;
    UsuarioBeanGenSpImpl user = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");
    if (user != null) {
        id_tipousuario = user.getId_tipousuario();
        id_usuario = user.getId();
    }
%>

<ul class="botonesbarra">
    <li><a class="inicio" href="jsp">Inicio</a></li>
    <%if (user != null) {%>
    <%if (id_tipousuario == 1) {%>
    <li><a href="jsp#/usuario">Usuarios</a></li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Mantenimientos <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li><a href="jsp#/jugador">Jugador</a></li>
            <li><a href="jsp#/contrincante">Contrincante</a></li>
            <li><a href="jsp#/partido">Partido</a></li>
            <li><a href="jsp#/estadistica">Estadistica</a></li>
            
        </ul>
    
    </li>
    <%}%>
    <li><a class="salir" href="jsp?ob=usuario&op=logout">Salir</a></li>
    <%}%>
</ul>



