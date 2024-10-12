package com.projeto.sistema.modelos;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
public class ItemEntrada implements Serializable {
    private static final long serialVersionUID = 1L;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public Entrada getEntrada() {
        return entrada;
    }

    public void setEntrada(Entrada entrada) {
        this.entrada = entrada;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public double getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(double quantidade) {
        this.quantidade = quantidade;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private double quantidade;
    private double valor;
    @ManyToOne
    private Entrada entrada;
    @ManyToOne
    private Produto produto;

    public double getValorCusto() {
        return valorCusto;
    }

    public void setValorCusto(double valorCusto) {
        this.valorCusto = valorCusto;
    }

    private double valorCusto;

}
