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
               <a href="" title="Applications">
               <i class="glyph-icon icon-users"></i>
               <span>Usuário</span>
               </a>
            </li>
            <li>
               <a href="buscarBeneficiario" title="Applications">
               <i class="glyph-icon icon-user"></i>
               <span>Beneficiário</span>
               </a>
            </li>
            <li>
               <a href="buscarContratado" title="Applications">
               <i class="glyph-icon icon-user-md"></i>
               <span>Contratado</span>
               </a>
            </li>
            <li>
               <a href="buscarProfissional" title="Applications">
               <i class="glyph-icon icon-stethoscope"></i>
               <span>Profissional</span>
               </a>
            </li>
            <li>
               <a href="buscarProfissional" title="Applications">
               <i class="glyph-icon icon-linecons-calendar"></i>
               <span>Agenda</span>
               </a>
            </li>
            <li>
               <a href="#" title="Extra pages">
               <i class="glyph-icon icon-credit-card"></i>
               <span>Faturamento</span>
               </a>
               <ul>
                  <li><a href="index.html" title=""><span>GUIAS SP/SADT</span></a></li>
               </ul>
            </li>
            <li class="divider"></li>
            <li>
               <a href="#" title="Charts">
               <i class="glyph-icon icon-file-text-o"></i>
               <span>Relatórios Gerenciais</span>
               </a>
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