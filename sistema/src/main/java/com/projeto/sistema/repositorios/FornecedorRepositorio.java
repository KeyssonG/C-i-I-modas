package com.projeto.sistema.repositorios;

import com.projeto.sistema.modelos.Fornecedor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FornecedorRepositorio extends JpaRepository<Fornecedor, Long> {
}
