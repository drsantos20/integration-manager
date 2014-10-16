<script type="text/javascript">
   $(window).load(function(){
       setTimeout(function() {
           $('#loading').fadeOut( 400, "linear" );
       }, 300);
   });
</script>
<style>
   #loading {position: fixed;width: 100%;height: 100%;left: 0;top: 0;right: 0;bottom: 0;display: block;background: #fff;z-index: 10000;}
   #loading img {position: absolute;top: 50%;left: 50%;margin: -23px 0 0 -23px;}
</style>
<div id="page-sidebar" class="rm-transition">
   <div id="page-sidebar-wrapper" >
      <div id="sidebar-menu">
         <div id="sidebar-search">
            <input type="text" placeholder="Autocomplete search..." class="autocomplete-input tooltip-button" data-placement="right" title="Type &apos;j&apos; to see the available tags..." name="">
            <i class="glyph-icon icon-search"></i>
         </div>
         <ul>
            <li>
               <a href="index.html" title="Applications">
               <i class="glyph-icon icon-linecons-tv"></i>
               <span>Dashboard</span>
               </a>
            </li>
            <li>
               <a href="index.html" title="Applications">
               <i class="glyph-icon icon-linecons-shop"></i>
               <span>Gerenciar</span>
               </a>
               <ul>
                  <li class="header text-left"><span>Usuários</span></li>
                  <li><a href="" title="Carousels"><span>Cadastrar Novo Usuário</span></a></li>
                  <li><a href="" title="Slideshows"><span>Buscar Usuários</span></a></li>
                  <li class="header text-left"><span>Beneficiários</span></li>
                  <li><a href="inserirBeneficiario" title="Portfolio 2 columns"><span>Cadastrar Novo Beneficiário</span></a></li>
                  <li><a href="buscarBeneficiario" title="Portfolio 2 columns"><span>Buscar Beneficiários</span></a></li>
                  <li class="header text-left"><span>Planos</span></li>
                  <li><a href="icon-boxes.html" title="Icon boxes"><span>Cadastrar Novo Plano</span></a></li>
                  <li><a href="page-titles.html" title="Page titles"><span>Listar Planos</span></a></li>
                  <li class="header text-left"><span>Produtos</span></li>
                  <li><a href="footer-1.html" title="Simple black footer"><span>Cadastrar Novo Produto</span></a></li>
                  <li><a href="footer-2.html" title="Simple blue footer"><span>Pesquisar Produtos</span></a></li>
               </ul>
            </li>
            <li>
               <a href="#" title="Applications">
               <i class="glyph-icon icon-paper-plane"></i>
               <span>Agenda</span>
               </a>
               <ul>
                  <li class="header text-left"><span>Consultas</span></li>
                  <li><a href="mailbox-inbox.html" title="Inbox"><span>Consultar Agenda</span></a></li>
               </ul>
            </li>
            <li>
               <a href="#" title="Extra pages">
               <i class="glyph-icon icon-linecons-params"></i>
               <span>Gerenciamento TISS</span>
               </a>
               <ul>
                  <li class="header text-left"><span>Autorização</span></li>
                  <li><a href="index.html" title="Dashboard example 1"><span>Solicitar Autorização</span></a></li>
               </ul>
            </li>
            <li class="divider"></li>
            <li>
               <a href="#" title="Charts">
               <i class="glyph-icon icon-linecons-calendar"></i>
               <span>Relatórios Gerenciais</span>
               </a>
               <ul>
                  <li class="header text-left"><span>Relatórios</span></li>
                  <li><a href="index.html" title="Dashboard example 1"><span>Relatórios</span></a></li>
               </ul>
            </li>
         </ul>
      </div>
      <!-- #sidebar-menu -->
      <div class="divider"></div>
      <div class="hidden-mobile text-center mrg15A">
         <div class="btn-group btn-group-sm">
            <a href="javascript:;" class="btn btn-primary tooltip-button" data-placement="top" title="Top tooltip">
            <i class="glyph-icon icon-flag"></i>
            </a>
            <a href="javascript:;" class="btn btn-primary tooltip-button" data-placement="bottom" title="Bottom tooltip">
            <i class="glyph-icon icon-inbox"></i>
            </a>
            <a href="javascript:;" class="btn btn-primary tooltip-button" data-placement="right" title="Right tooltip">
            <i class="glyph-icon icon-hdd-o"></i>
            </a>
         </div>
      </div>
      <div class="divider"></div>
   </div>
   <!-- #page-sidebar-wrapper -->
</div>
<!-- #page-sidebar -->