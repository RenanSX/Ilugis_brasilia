<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gerenciamento.aspx.cs" Inherits="IluGis.gerenciamento1" %>

<asp:Content ID="Content10" ContentPlaceHolderID="head" runat="server">
<title>IluGIS</title>

    <style>
        header {
	        padding: 30px;
	        overflow: hidden;
        }
        header input {
	        float: right;
	        padding: 10px;
	        width: 200px;
	        border: none;
        }
        menu {
	        position: fixed;	
            top: 0;
	        left: 0;
	        z-index: 1;
	        width: 230px;
	        height: 100%;	
	        background: #e7e7e7;
            padding-right: 15px;
            margin:0;
            padding-left: 15px;
	        box-shadow: inset -2px -5px 5px 0 rgba(0,0,0,.3)

        }
        menu {
	        -webkit-transform: translateX(-220px);
	        -moz-transform: translateX(-220px);
	        -ms-transform: translateX(-220px);
	        transform: translateX(-220px);
            -webkit-transition:  0.3s; /* For Safari 3.1 to 6.0 */
            transition:  0.3s;
        }
        header, .main , .navbar {
	        -webkit-transform: translateX(0);
	        -moz-transform: translateX(0);
	        -ms-transform: translateX(0);
	        transform: translateX(0);
        }
        .menu-active menu  {
	        -webkit-transform: translateX(0);
	        -moz-transform: translateX(0);
	        -ms-transform: translateX(0);
	        transform: translateX(0);
            position: fixed;
            -webkit-transition:  0.5s; /* For Safari 3.1 to 6.0 */
            transition:  0.5s;
        }
        .menu-active .navbar{
            -webkit-transform: translateX(200px);
	        -moz-transform: translateX(200px);
	        -ms-transform: translateX(200px);
	        transform: translateX(200px);
        }
        .menu-active header, 
        .menu-active .main {
	        -webkit-transform: translateX(200px);
	        -moz-transform: translateX(200px);
	        -ms-transform: translateX(200px);
	        transform: translateX(120px);
    
        }
        .menu-active  {
            transform: translateX(0);
        }
        .arrow{
             position: relative;
             top:0;
             left:0;
             cursor: pointer;
             margin-top: 700%;
             margin-left: 100%;
             z-index: 2; 
             color: #4F4F4F;          
        }
        .arrow:hover{
            color: #363636;
        }
</style>
</asp:Content>

<asp:Content ID="ContentGerenciamento" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <header> 
         <!---------------------------- Titulo--------------------------------------->
        <div class="row" style="margin-bottom: 8px;">
            <h1 style="text-align: center">Relatórios</h1>   
        </div>
        <!-----------------------------Fim titulo------------------------------------>

        <!----------------------relatorios---------------------------------------------->
        
        <div class="row" style="margin-bottom:16px">
            <div class="col-md- col-sm-3 col-md-offset-4 col-sm-offset-4">
                <asp:LinkButton runat="server" ID="btnEmitirTodosRelatorios" class="btn btn-md btn-primary btn-block" type="submit" Text="Emitir Relatório de todas localidades" title="Emitir relatório de todas as localidades"/>
            </div>
        </div>
        
        <div id="doidao" class="row"  style="margin-bottom:16px">
            <div  id="localidadeRelatorio" class=" col-md-3 col-sm-3 col-md-offset-1 col-sm-offset-1" style="margin-bottom:8px">             
                <asp:DropDownList  Style="width: 100%; height: 34px;" ID="ddllocalidadeRelatorio" class=" form-control input-sm " runat="server" title="Definir localidade" autofocus="true">
                <asp:ListItem Text ="Selecione o local" Value = "-1"></asp:ListItem>
                <asp:ListItem Text ="BARREIRO 01" Value = "BARREIRO01"></asp:ListItem>   
                <asp:ListItem Text ="BARREIRO 02" Value = "BARREIRO02"></asp:ListItem>   
                <asp:ListItem Text ="BARREIRO 03" Value = "BARREIRO03"></asp:ListItem>   
                <asp:ListItem Text ="BARREIRO 04" Value = "BARREIRO04"></asp:ListItem>   
                <asp:ListItem Text ="BARREIRO 05" Value = "BARREIRO05"></asp:ListItem>   
                <asp:ListItem Text ="CENTRO" Value = "CENTRO"></asp:ListItem>   
                <asp:ListItem Text ="CENTRO SUL 01" Value = "CENTROSUL01"></asp:ListItem>
                <asp:ListItem Text ="CENTRO SUL 02" Value = "CENTROSUL02"></asp:ListItem>  
                <asp:ListItem Text ="CENTRO SUL 03" Value = "CENTROSUL03"></asp:ListItem>                                                                       
                <asp:ListItem Text ="LESTE 01" Value = "LESTE01"></asp:ListItem>   
                <asp:ListItem Text ="LESTE 02" Value = "LESTE02"></asp:ListItem>   
                <asp:ListItem Text ="NORDESTE 01" Value = "NORDESTE01"></asp:ListItem>     
                <asp:ListItem Text ="NORDESTE 02" Value = "NORDESTE02"></asp:ListItem>   
                <asp:ListItem Text ="NOROESTE 01" Value = "NOROESTE01"></asp:ListItem>   
                <asp:ListItem Text ="NOROESTE 02" Value = "NOROESTE02"></asp:ListItem>   
                <asp:ListItem Text ="NOROESTE 03" Value = "NOROESTE03"></asp:ListItem>   
                <asp:ListItem Text ="NORTE 01" Value = "NORTE01"></asp:ListItem>   
                <asp:ListItem Text ="NORTE 02" Value = "NORTE02"></asp:ListItem>   
                <asp:ListItem Text ="OESTE 01" Value = "OESTE01"></asp:ListItem>   
                <asp:ListItem Text ="OESTE 02" Value = "OESTE02"></asp:ListItem>   
                <asp:ListItem Text ="OESTE 03" Value = "OESTE03"></asp:ListItem>   
                <asp:ListItem Text ="OESTE 04" Value = "OESTE04"></asp:ListItem>   
                <asp:ListItem Text ="PAMPULHA 01" Value = "PAMPULHA01"></asp:ListItem>
                <asp:ListItem Text ="PAMPULHA 02" Value = "PAMPULHA02"></asp:ListItem> 
                <asp:ListItem Text ="PAMPULHA 02" Value = "PAMPULHA02"></asp:ListItem> 
                <asp:ListItem Text ="VENDA NOVA 01" Value = "VENDANOVA01"></asp:ListItem> 
                <asp:ListItem Text ="VENDA NOVA 02" Value = "VENDANOVA02"></asp:ListItem>          
                </asp:DropDownList>
            </div>
            <div class="col-md-3 col-sm-3">
                <asp:LinkButton runat="server" ID="btnEmitirRelatorio" class="btn btn-md btn-primary btn-block" type="submit" Text="Emitir Relatório" title="Emitir relatório"/>
            </div>
            
        </div>
        <!---------------------Fim relatorios------------------------------------------->

        <!-----------------------------usuário controle---------------------------------------------->
        <div class="row">
            <h2 style="text-align:center">Usuários</h2>
        </div>

        <!-------------------------------fim usuario controle------------------------------------------>

        <div id="viz" style="width: 600px; height:600px;"></div>
            </header>
        <menu>
            <div class="row">
            <div class="col-md-10 col-sm-10 col-xs-10">
            <h3 style="margin-top: 80%; text-align: center">Filtro</h3>
            <h4 style="margin-top: 10%">Empresas</h4>
            <asp:DropDownList  Style="width: 100%; height: 34px; margin-bottom: 10px" ID="DropDownList1" class=" form-control input-sm " runat="server" title="Definir localidade" autofocus="true">
            <asp:ListItem Text ="VENDA NOVA 02" Value = "VENDANOVA02"></asp:ListItem>          
            </asp:DropDownList>
            <h4 style="margin-top:0">Localidades</h4>
            <asp:DropDownList  Style="width: 100%; height: 34px; margin-bottom: 20px; margin-top:0" ID="DropDownList2" class=" form-control input-sm " runat="server" title="Definir localidade" autofocus="true">
            <asp:ListItem Text ="VENDA NOVA 02" Value = "VENDANOVA02"></asp:ListItem>          
            </asp:DropDownList>
            <asp:LinkButton runat="server" ID="LinkButton1" class="btn btn-md btn-primary btn-block" type="submit" Text="Emitir Relatório" title="Emitir relatório"/>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2">
           <div class="arrow">
           <span class="glyphicon glyphicon-menu-left" style="font-size: 35px;"></span>
            </div>
                    </div>
            </div>
             </menu>
        <script>

            relat("TIPO_FONTE_LUMINARIA", "POTENCIA_FONTE_LUMI");

            function relat(campo1, campo2) {
                var campos = "";
                $.ajax({   
                    url: '<%=ResolveUrl("~/Classes/service.asmx/GetTipoFonte") %>',
                    type: "POST",
                    data: "{'campo1': '" + campo1 + "', 'campo2': '" + campo2 + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data2) {
                        var parsed = $.parseJSON(data2.d);
                        var count = 0;
                        $.each(parsed, function (i, jsondata) {
                            if (jsondata.name != null)
                            {
                                if (count == 0) {
                                    campos += '[{"name": "' + jsondata.name + '","skill": "' + jsondata.skill + '","value": ' + jsondata.value + ' }';
                                }
                                else {
                                    campos += ',{"name": "' + jsondata.name + '","skill": "' + jsondata.skill + '","value": ' + jsondata.value + ' }';
                                }
                                count++;
                            }
                        })

                        campos += "]";
                       var teste = $.parseJSON(campos);
             
                        //alert(campos);                       
                    }
                });
            }

          //  var sample_data = [
          //      { "name": "METALICO", "skill": "0", "value": 100 },
          //      { "name": "METALICO", "skill": "35", "value": 100 },
          //      { "name": "METALICO", "skill": "70", "value": 100 },
          //      { "name": "METALICO", "skill": "80", "value": 100 },
          //      { "name": "METALICO", "skill": "100", "value": 100 },
          //      { "name": "METALICO", "skill": "125", "value": 100 },
          //      { "name": "METALICO", "skill": "150", "value": 100 },
          //      { "name": "METALICO", "skill": "250", "value": 100 },
          //      { "name": "METALICO", "skill": "400", "value": 100 },
          //      { "name": "MERCURIO", "skill": "0", "value": 0 },
          //      { "name": "MERCURIO", "skill": "35", "value": 100 },
          //      { "name": "MERCURIO", "skill": "70", "value": 0 },
          //      { "name": "MERCURIO", "skill": "80", "value": 0 },
          //      { "name": "MERCURIO", "skill": "100", "value": 0 },
          //      { "name": "MERCURIO", "skill": "125", "value": 12 },
          //      { "name": "MERCURIO", "skill": "150", "value": 111 },
          //      { "name": "MERCURIO", "skill": "250", "value": 200 },
          //      { "name": "MERCURIO", "skill": "400", "value": 45 },
          //      { "name": "SODIO", "skill": "0", "value": 0 },
          //      { "name": "SODIO", "skill": "35", "value": 100 },
          //      { "name": "SODIO", "skill": "70", "value": 123 },
          //      { "name": "SODIO", "skill": "80", "value": 50 },
          //      { "name": "SODIO", "skill": "100", "value": 42 },
          //      { "name": "SODIO", "skill": "125", "value": 34 },
          //      { "name": "SODIO", "skill": "150", "value": 64 },
          //      { "name": "SODIO", "skill": "250", "value": 34 },
          //      { "name": "SODIO", "skill": "400", "value": 189 }
            //];

            //var visualization = d3plus.viz()
            //             .container("#viz")
            //             .data($.parseJSON(campos))
            //             .id(["name","skill"])
            //             .size("value")
            //             .type("pie")
            //             .draw();

            $('.arrow').on('click touchstart', function (e) {
                $('html').toggleClass('menu-active');
                e.preventDefault();

            });
</script>
    
    </form>
</asp:Content>