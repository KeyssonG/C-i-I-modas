package com.projeto.sistema.repositorios;

import com.projeto.sistema.modelos.Funcionario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FuncionarioRepositorio extends JpaRepository<Funcionario, Long> {
}
