<section class="main_slots-wrapper">
    <div class="eng-title mb-8">
        <div class="left-title">
            <h4 class="icon-20 txt-yellow"></h4>
            <h4 class="white">Resultados da Busca</h4>
        </div>
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