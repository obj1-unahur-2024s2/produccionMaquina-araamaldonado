object maquina {
  const produccion = [ ]

  method agregarProduccion(unElemento){
    produccion.add(unElemento)
  }

  method agregarProducciones(unaLista) {
    produccion.addAll(unaLista)
  }

  method algunDiaSeProdujo(cantidad) {
    return produccion.contains(cantidad)
  }

  method maximoValorDeProduccion() = produccion.max()

  method valoresDeProduccionPares() {
    return produccion.filter( {p => p.even()} )
  } 
  
  method produccionEsAcotada(n1,n2) = produccion.all ( {p => p.between(n1, n2)} )

  method produccionesSuperioresA(cuanto) = produccion.filter( {p => p > cuanto} )

  method produccionesSumandoA(n) = produccion.map( {p => p + n} )

  method totalProducido() = produccion.sum()

  method ultimoValorDeProduccion() = produccion.last()

  method cantidadProduccionesMayorALaPrimera() = produccion.count( {p => p > produccion.first()} )
  }