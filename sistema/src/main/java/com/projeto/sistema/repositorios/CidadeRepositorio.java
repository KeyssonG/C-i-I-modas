package com.projeto.sistema.repositorios;
import com.projeto.sistema.modelos.Cidade;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CidadeRepositorio extends JpaRepository<Cidade, Long> {
}
