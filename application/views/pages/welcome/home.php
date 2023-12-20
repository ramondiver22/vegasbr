
<style>
        #preloader {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #000; /* Cor de fundo preto */
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 9999;
        }

               #preloader {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #000; /* Cor de fundo preto */
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 9999;
            opacity: 1; /* Inicialmente opaco */
            transition: opacity 1s; /* Adiciona uma transição suave */
        }

        #loader {
            border: 8px solid #f3f3f3;
            border-top: 8px solid #3498db;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            animation: spin 2s linear infinite;
        }

       #logo {
            max-width: 350px; /* Defina o tamanho da sua logo */
        }
.search-results .main_slots-wrapper {
    padding: 20px;
}
.search-results {
    position: absolute;
    width: 100%;
    background: #131521;
    margin-top: 1rem;
    border-radius: .25rem;
    z-index: 999;
}
.sys-input {
    margin-top: 20px;
    border-radius: 8px !important;
    overflow: hidden;
    position: relative;
}
.sys-input svg {
    position: absolute;
    opacity: 0.4;
    top: 14px;
    left: 10px;
}
.input-search {
    border: 1px solid #0b0b09;
    background: #0b0b09;
    border-radius: 3px;
    padding: 10px;
    color: white;
    width: 100%;
    cursor: text;
    transition: background 0.3s ease;
    background: #0b0b09 !important;
    padding-left: 35px !important;
    height: 45px;
    font-weight: 600;
}
    </style>


<!-- Começa Aqui -->

<div class="main-content home">
   <div class="container-medium">


   				
   			<?php if ($this->session->flashdata('msg')): ?> 					
                <div class="col-md-12 mt-3 mb-3">    
                    <div class="alert alert-<?= $this->session->flashdata('tipo'); ?> font alert-dismissible fade show" role="alert">
								 <?= $this->session->flashdata('msg'); ?>
					</div>
                </div>
	        <?php endif; ?>

           <div class="main_banner-wrapper mb-24">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <?php
            // Substitua com a lógica para recuperar os banners do banco de dados
            $active = true; // Variável para controlar o item ativo

            foreach ($banners as $banner) {
                // Verifique se este é o primeiro banner para torná-lo ativo
                $class = $active ? 'active' : '';

                echo '<div class="carousel-item ' . $class . '">';
                echo '<img src="' . $banner->image . '" class="d-block w-100" alt="...">';
                echo '</div>';

                // Desative a variável $active após o primeiro banner
                $active = false;
            }
            ?>
        </div>
        <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </button>
    </div>
</div>

      <div class="sys-input input-m input-prepend-icon">
         <div class="input-wrap">
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" width="18px" height="18px" x="0" y="0" viewBox="0 0 512.005 512.005" xml:space="preserve"><g><path d="m505.749 475.587-145.6-145.6c28.203-34.837 45.184-79.104 45.184-127.317C405.333 90.926 314.41.003 202.666.003S0 90.925 0 202.669s90.923 202.667 202.667 202.667c48.213 0 92.48-16.981 127.317-45.184l145.6 145.6c4.16 4.16 9.621 6.251 15.083 6.251s10.923-2.091 15.083-6.251c8.341-8.341 8.341-21.824-.001-30.165zM202.667 362.669c-88.235 0-160-71.765-160-160s71.765-160 160-160 160 71.765 160 160-71.766 160-160 160z" fill="#ffffff" data-original="#000000"></path></g></svg> 
            <input id="type-search" type="" autocapitalize="none" index="0" autocorrect="off" inputmode="text" placeholder="Pesquisar" autocomplete="new-text" class="input-search">
         </div>
      </div>

      <div class="search-results"></div>

      <div class="main-sublinks-wrapper">
         <div class="eng-sublinks-2">
            <a href="<?= base_url(); ?>cassino/aovivo" class="sublink w-inline-block" data-ix="hover-stroke-sublink">
               <div class="eng-stroke-icon-sublink mb-8">
                  <div class="eng-icon-sublink">
                     <div class="icon-20"></div>
                  </div>
                  <div class="stroke-icon-sublink"></div>
               </div>
               <div class="white">Roletas ao vivo</div>
            </a>
            <a href="<?= base_url(); ?>cassino" class="sublink w-inline-block" data-ix="hover-stroke-sublink">
               <div class="eng-stroke-icon-sublink mb-8">
                  <div class="eng-icon-sublink">
                     <div class="icon-20"></div>
                  </div>
                  <div class="stroke-icon-sublink"></div>
               </div>
               <div class="white">Cassino</div>
            </a>
            <a href="<?= base_url(); ?>cassino/aovivo" class="sublink w-inline-block" data-ix="hover-stroke-sublink">
               <div class="eng-stroke-icon-sublink mb-8">
                  <div class="eng-icon-sublink">
                     <div class="icon-20"></div>
                  </div>
                  <div class="stroke-icon-sublink"></div>
               </div>
               <div class="white">Cassino ao vivo</div>
            </a>
            <a href="<?= base_url(); ?>cassino/blackjack" class="sublink w-inline-block" data-ix="hover-stroke-sublink">
               <div class="eng-stroke-icon-sublink mb-8">
                  <div class="eng-icon-sublink">
                     <div class="icon-20"></div>
                  </div>
                  <div class="stroke-icon-sublink"></div>
               </div>
               <div class="white">Blackjack</div>
            </a>
            <a href="<?= base_url(); ?>cassino/bacara" class="sublink w-inline-block" data-ix="hover-stroke-sublink">
               <div class="eng-stroke-icon-sublink mb-8">
                  <div class="eng-icon-sublink">
                     <div class="icon-20"></div>
                  </div>
                  <div class="stroke-icon-sublink"></div>
               </div>
               <div class="white">Bacará</div>
            </a>
            <a href="<?= base_url(); ?>cassino" class="sublink w-inline-block" data-ix="hover-stroke-sublink">
               <div class="eng-stroke-icon-sublink mb-8">
                  <div class="eng-icon-sublink">
                     <div class="icon-20"><i class="fa-solid fa-fire fa-lg"></i></div>
                  </div>
                  <div class="stroke-icon-sublink"></div>
               </div>
               <div class="white">Populares</div>
            </a>
            <a href="<?= base_url(); ?>cassino" class="sublink w-inline-block" data-ix="hover-stroke-sublink">
               <div class="eng-stroke-icon-sublink mb-8">
                  <div class="eng-icon-sublink">
                     <div class="icon-20"></div>
                  </div>
                  <div class="stroke-icon-sublink"></div>
               </div>
               <div class="white">Todos os jogos</div>
            </a>
         </div>
      </div>
      <section id="best" class="main_slots-wrapper">
         <div class="eng-title mb-8">
            <div class="left-title">
               <h4 class="txt-yellow"><i class="fa-solid fa-fire fa-lg"></i></h4>
               <h4 class="white">Populares</h4>
            </div>
         </div>
         <div class="w-dyn-list">
            <div fs-cmsfilter-duration="50" fs-cmsload-mode="infinite" class="eng-slots-int _6 w-dyn-items" fs-cmsfilter-tagformat="category" fs-cmsfilter-element="list" role="list" fs-cmssort-element="list" fs-cmsload-element="list" fs-cmsfilter-showquery="true">

            <?php foreach ($populares as $p): ?>
               <div role="listitem" class="item-game w-dyn-item">
                  <a href="<?php echo base_url('games/ver/'.$p->provider.'/'.$p->game_code); ?>" class="link-game w-inline-block" data-ix="hover-play-game">
                     <img loading="eager" img-slot-game="" src="<?php echo $p->banner; ?>" alt="" class="slot-game">
                     <div fs-cmsfilter-field="name" fs-cmssort-field="name" class="name-game"><?php echo $p->game_name; ?></div>
                     <div fs-cmsfilter-field="name" fs-cmssort-field="name" class="name-game"><?php echo $p->provider; ?></div>
                     <div class="eng-light-effetct w-condition-invisible" data-ix="light-effect-slot"><img src="https://assets.website-files.com/6483631a773f6af2b4edabab/64c2a7770457de14173a580e_reflect.webp" loading="eager" sizes="(max-width: 479px) 9vw, (max-width: 767px) 18.3671875px, (max-width: 991px) 2vw, (max-width: 1279px) 18.3671875px, 1vw" srcset="https://assets.website-files.com/6483631a773f6af2b4edabab/64c2a7770457de14173a580e_reflect-p-500.png 500w, https://assets.website-files.com/6483631a773f6af2b4edabab/64c2a7770457de14173a580e_reflect-p-800.png 800w, https://assets.website-files.com/6483631a773f6af2b4edabab/64c2a7770457de14173a580e_reflect.webp 1148w" alt="" class="reflect-slot" style="transform-style: preserve-3d; opacity: 0; transform: translateX(-150%) translateY(0px) translateZ(0px);"></div>
                     <div class="light-effect-slot w-condition-invisible"></div>
                     <div class="light-effect-slot-blur w-condition-invisible"></div>
                  </a>
               </div>

             <?php endforeach; ?>
               
            </div>
            <div role="navigation" aria-label="List" class="w-pagination-wrapper pagination"></div>
         </div>
      </section>
      <div class="main_games-wrapper">
         <div class="eng-sublinks mb-32">
            <a href="<?= base_url(); ?>games/ver/PGSOFT/fortune-gods" class="btn-small w-inline-block">
               <div class="no-wrap">Fortune Gods</div>
            </a>
            <a href="<?= base_url(); ?>games/ver/PGSOFT/fortune-mouse" class="btn-small w-inline-block">
               <div class="no-wrap">Fortune Mouse</div>
            </a>
            <a href="<?= base_url(); ?>games/ver/PGSOFT/fortune-ox" class="btn-small w-inline-block">
               <div class="no-wrap">Fortune Ox</div>
            </a>
            <a href="<?= base_url(); ?>games/ver/PGSOFT/fortune-tiger" class="btn-small w-inline-block">
               <div class="no-wrap">Fortune Tiger</div>
            </a>
         </div>
      </div>
      <section class="main_slots-wrapper">
         <div class="eng-title mb-8">
            <div class="left-title">
               <h4 class="icon-20 txt-yellow"></h4>
               <h4 class="white">Cassino</h4>
            </div>
            <a href="<?= base_url(); ?>cassino" class="link-more-games w-inline-block">
               <div>Ver todos</div>
               <div class="icon-12 txt-yellow"></div>
            </a>
         </div>
         <div class="w-dyn-list">
            <div fs-cmsfilter-duration="50" fs-cmsload-mode="infinite" class="eng-slots-int _6 w-dyn-items" fs-cmsfilter-tagformat="category" fs-cmsfilter-element="list" role="list" fs-cmssort-element="list" fs-cmsload-element="list" fs-cmsfilter-showquery="true">
            
            <?php foreach ($jogos as $p): ?>
               <div role="listitem" class="item-game w-dyn-item">
                  <a href="<?php echo base_url('games/ver/'.$p->provider.'/'.$p->game_code); ?>" class="link-game w-inline-block" data-ix="hover-play-game">
                     <img loading="eager" img-slot-game="" src="<?php echo $p->banner; ?>" alt="" class="slot-game">
                     <div fs-cmsfilter-field="name" fs-cmssort-field="name" class="name-game"><?php echo $p->game_name; ?></div>
                     <div fs-cmsfilter-field="name" fs-cmssort-field="name" class="name-game"><?php echo $p->provider; ?></div>
                  </a>
             
               </div>
            <?php endforeach; ?> 
            </div>
         </div>
      </section>
      
      <section id="casino" class="main_slots-wrapper">
         <div class="eng-title mb-8">
            <div class="left-title">
               <h4 class="icon-20 txt-yellow"></h4>
               <h4 class="white">Cassino ao vivo</h4>
            </div>
            <a href="<?= base_url(); ?>cassino/aovivo" class="link-more-games w-inline-block">
               <div>Ver todos</div>
               <div class="icon-12 txt-yellow"></div>
            </a>
         </div>
         <div class="w-dyn-list">
            <div fs-cmsfilter-duration="50" fs-cmsload-mode="infinite" class="eng-slots-int _6 w-dyn-items" fs-cmsfilter-tagformat="category" fs-cmsfilter-element="list" role="list" fs-cmssort-element="list" fs-cmsload-element="list" fs-cmsfilter-showquery="true">
            <?php foreach ($aovivo as $p): ?>
               <div role="listitem" class="item-game w-dyn-item">
                  <a href="<?php echo base_url('games/ver/'.$p->provider.'/'.$p->game_code); ?>" class="link-game w-inline-block" data-ix="hover-play-game">
                     <img loading="eager" img-slot-game="" src="<?php echo $p->banner; ?>" alt="" class="slot-game">
                     <div fs-cmsfilter-field="name" fs-cmssort-field="name" class="name-game"><?php echo $p->game_name; ?></div>
                     <div fs-cmsfilter-field="name" fs-cmssort-field="name" class="name-game"><?php echo $p->provider; ?></div>
                  </a>
                  <div class="coming-soon-alert w-condition-invisible">Em breve!</div>
               </div>
            <?php endforeach; ?>
               
            </div>
         </div>
      </section>
      
   </div>

   <script>
        window.addEventListener('load', function () {
            var preloader = document.getElementById('preloader');
            var content = document.getElementById('content');

            setTimeout(function() {
                preloader.style.display = 'none';
                content.style.display = 'block';
            }, 500);
        });
    </script>