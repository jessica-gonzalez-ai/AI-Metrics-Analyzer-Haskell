-- González Heredia Jessica Naomi -C24310827 

module Main where 

    import AnalisisIA
    import ArchivoIA
    import TiposIA

    main :: IO ()
    main = do
        putStrLn "Iniciando analisis de los experimento..."

        -- Leer el archivo 
        listaExperimentos <- leerArchivo "experimentos.txt"

        -- Procesar la información  
        let total = contarExperimentos listaExperimentos 
            promPrec = promedioPrecision listaExperimentos

            sumaPerdida = sum [perdida exp | exp <- listaExperimentos]
            promPerd = sumaPerdida / fromIntegral total 

            epocasTotales = sumarEpocas listaExperimentos
            mejor = mejorModelo listaExperimentos

            modelosTop= [modelo exp | exp <- listaExperimentos, clasificar exp == Excelente || clasificar exp == Bueno]

        -- 3. Texto
        let textoReporte = "--- REPORTE DE EXPERIMENTOS DE IA ---\n" ++
                       "Total de modelos analizados: " ++ show total ++ "\n" ++
                       "Promedio de precision: " ++ show promPrec ++ "\n" ++
                       "Promedio de perdida: " ++ show promPerd ++ "\n" ++
                       "Suma total de epocas: " ++ show epocasTotales ++ "\n" ++
                       "Modelo con mejor precision: " ++ modelo mejor ++ " (" ++ show (precision mejor) ++ ")\n" ++
                       "Modelos clasificados como Excelente o Bueno: " ++ show modelosTop ++ "\n" 

        -- 4. Escribir el reporte final (¡Ya alineado!)
        generarReporte "reporte.txt" textoReporte
        
        putStrLn "¡Reporte generado con exito!"