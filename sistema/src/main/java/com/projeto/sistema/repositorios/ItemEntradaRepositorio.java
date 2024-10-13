package com.projeto.sistema.repositorios;

import com.projeto.sistema.modelos.ItemEntrada;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ItemEntradaRepositorio extends JpaRepository<ItemEntrada, Long> {
    @Query("SELECT e FROM ItemEntrada e WHERE e.entrada.id =?1")
    List<ItemEntrada>BuscarPorEntrada(Long id);
}
