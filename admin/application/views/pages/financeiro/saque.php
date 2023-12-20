<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
<div class="container mt-5">
            <?php if ($this->session->flashdata('msg')): ?>
            <div class="alert alert-<?= $this->session->flashdata('tipo'); ?> font" role="alert">
                <?= $this->session->flashdata('msg'); ?>
            </div>
        <?php endif; ?>
        <div class="card">
            <div class="card-header">
                Transações (Saques)
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Transação</th>
                            <th>Cliente</th>
                            <th>Método</th>
                            <th>Status</th>
                            <th>Registrado</th>
                            <th>Pago</th>
                            <th>Valor</th>
                            <th>Ação</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($transacoes_saque as $transacao) { ?>
                            <tr>
                                <th><?php echo $transacao->transacao_id ?></th>
                                <td><?php echo $transacao->nome_usuario; ?></td>
                                <td><?php echo $transacao->tipo; ?></td>
                                <td><?php echo $transacao->status; ?></td>
                                <td><?php echo $transacao->data_hora; ?></td>
                                <td>
                                    <?php if ($transacao->status === 'pago') { ?>
                                        <span class="badge bg-success">Pago</span>
                                    <?php } else { ?>
                                        <span class="badge bg-danger">Não Pago</span>
                                    <?php } ?>
                                </td>
                                <td><?php echo $transacao->valor; ?></td>
                                <td>
                                    <?php if ($transacao->status != 'pago') { ?>
                                    <a href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#saque<?php echo $transacao->transacao_id; ?>">Aprovar Saque</a>
                                    <div class="modal fade" id="saque<?php echo $transacao->transacao_id; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Aprovar Saque</h5>
                                                </div>
                                                <div class="modal-body">
                                                    <form method="post" action="<?=base_url('financeiro/aprovarSaque')?>" id="aprovarSaque<?php echo $transacao->transacao_id; ?>">
                                                        <input type="hidden" name="transacao" value="<?php echo $transacao->transacao_id ?>" />
                                                        <div class="eng-text-field"><input type="number" class="input no-padding w-input form-control" maxlength="256" name="value" placeholder="Inisira um valor" id="value" required="" value="<?php echo $transacao->valor; ?>"></div>
    
                                                        <div class="eng-text-field mt-2">
                                                            <input type="text" class="form-control" name="type" maxlength="256"placeholder="Tipo Chave" id="tipo" required="" value="<?php echo $transacao->tipo_chave; ?>">
                                                        </div>

                                                        <div class="eng-text-field mt-2">
                                                            <input type="text" class="form-control" maxlength="256" name="key" placeholder="Chave PIX" id="key" required="" value="<?php echo $transacao->chave; ?>">
                                                        </div>
                                                    </form>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                                                    <button type="submit" class="btn btn-primary" form="aprovarSaque<?php echo $transacao->transacao_id; ?>">Aprovar Saque</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>