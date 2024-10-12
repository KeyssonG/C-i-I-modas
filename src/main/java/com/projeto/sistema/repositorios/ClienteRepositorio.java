package com.projeto.sistema.repositorios;
import com.projeto.sistema.modelos.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClienteRepositorio extends JpaRepository<Cliente, Long> {
}
