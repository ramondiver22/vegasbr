<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="container mt-5">
        <?php if ($this->session->flashdata('msg')): ?>
        <div class="alert alert-<?= $this->session->flashdata('tipo'); ?> font" role="alert">
            <?= $this->session->flashdata('msg'); ?>
        </div>
        <?php endif; ?>
        <div class="card">
            <div class="card-header">
                Movimentações

                <a href="#" class="btn btn-primary" style="float: right" data-bs-toggle="modal" data-bs-target="#limparTransacoes">Validar Transações</a>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Cliente</th>
                            <th>Método</th>
                            <th>Status</th>
                            <th>Registrado</th>
                            <th>Pago</th>
                            <th>Valor</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($transacoes_saque as $transacao) { ?>
                            <tr>
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
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>

<div class="modal fade" id="limparTransacoes" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Validar transações</h5>
            </div>

            <div class="modal-body">
                <div class="alert alert-info"><b>Atenção:</b> A ação atual irá processar as transações que foram pagas e que estão pendentes e também irá remover as transações que estão em processamento a mais de um dia. Tem certeza disso?</div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Não</button>
                <a type="submit" class="btn btn-primary" href="/admin/financeiro/validarTransacoes">Sim, validar transações</a>
            </div>
        </div>
    </div>
</div>