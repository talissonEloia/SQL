/*

CREATE TABLE `logistica`.`table_funcionario` (
	`CodigoDoFornecedor` int not null,
    `sobrenome` varchar(30) not null,
    `nome` varchar(30) null,
    `Cargo` varchar(40) null,
    `Tratamento` char(10) null,
    `DataDeNascimento` date not null,
    `DataDeContratacao` date not null,
	`Endereco` varchar(25) null,
    `Cidade` varchar(25) null,
    `Regiao` varchar(25) null,
    `CEP` char(15) null,
    `Pais` varchar(25) null,
    `TelefoneResidencial` char(20) null,
    `Ramal`char(5) not null,
    `Observacoes` char(200) null);
    

CREATE TABLE `logistica`.`Table_Pedido`(
	`NumeroDoPedido` int not null,
    `CodigoDoCliente` char(10) not null,
    `CodigoDoFuncionario` int not null,
    `DataDoPedido` date null,
    `DataDeEntrega` date null,
    `DataDeEnvio` date null,
    `CodigoDaTransportadora` int not null,
    `Frete` float null,
    `NomeDoDestinatario` varchar(50) null,
    `CEPdeDestino` char(15) null,
    `PaisDeDestino` varchar(25) null,
    `CidadeDeDestino` varchar(25) null,
    `RegiaoDeDestino` varchar(25) null
); 

create table `logistica`.`TableProduto`(
	`CodigoDoProduto` int not null,
    `NomeDoProduto` varchar(50) not null,
    `CodigoDoFornecedor` int not null,
    `CodigoDaCategoria` int not null,
    `QuantidadePorUnidade` char(30) null,
    `PrecoUnitario` float null,
    `UnidadeEmEstoque` int null,
    `UnidadePerdidas` int null,
    `NivelDeReposicao` int null,
    `Descontinuado` int null
);
*/