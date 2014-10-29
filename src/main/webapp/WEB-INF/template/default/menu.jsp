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
         <ul>
            <li>
               <a href="index.html" title="Applications">
               <i class="glyph-icon icon-linecons-tv"></i>
               <span>Página Principal</span>
               </a>
            </li>
            <li>
               <a href="index.html" title="Applications">
               <i class="glyph-icon icon-users"></i>
               
               <span>Usuário</span>
               </a>
               <ul>
               	  <li><a href="" title="Gerenciamento de usuários"><span>Gerenciar Usuário</span></a></li>
               </ul>
            </li>
            <li>
               <a href="index.html" title="Applications">
               <i class="glyph-icon icon-user"></i>
               
               <span>Beneficiário</span>
               </a>
               <ul>
               	  <li><a href="buscarBeneficiario" title="Gerenciamento de beneficiários"><span>Gerenciar Beneficiário</span></a></li>
<!--                   <li><a href="buscarBeneficiario" title="Portfolio 2 columns"><span class="glyph-icon icon-gears" title="Usuário"></span>Gerenciar Beneficiário</a></li> -->
               </ul>
            </li>
            <li>
               <a href="index.html" title="Applications">
               <i class="glyph-icon icon-user-md"></i>
               
               <span>Contratado</span>
               </a>
               <ul>
               	  <li><a href="buscarContratado" title="Gerenciamento de contratados"><span>Gerenciar Contratado</span></a></li>
<!--                   <li><a href="inserirBeneficiario" title="Portfolio 2 columns"><span class="glyph-icon icon-gears" title="Usuário"></span>Gerenciar Contratado</a></li> -->
               </ul>
            </li>
            
            <li>
               <a href="index.html" title="Applications">
               <i class="glyph-icon icon-stethoscope"></i>
               
               <span>Profissional</span>
               </a>
               <ul>
               	  <li><a href="" title="Gerenciamento de profissionais"><span>Gerenciar Profissional</span></a></li>
<!--                   <li><a href="inserirBeneficiario" title="Portfolio 2 columns"><span class="glyph-icon icon-gears" title="Usuário"></span>Gerenciar Profissional</a></li> -->
               </ul>
            </li>
            
            
            <li>
               <a href="#" title="Applications">
               <i class="glyph-icon icon-linecons-calendar"></i>
               <span>Agenda</span>
               </a>
               <ul>
<!--                   <li class="header text-left"><span>Consultas</span></li> -->
                  <li><a href="" title="Gerenciamento de agendas/consultas"><span>Gerenciar Agenda</span></a></li>
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