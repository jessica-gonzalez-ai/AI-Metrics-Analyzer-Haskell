-- González Heredia Jessica Naomi -C24310827 

module AnalisisIA where

    import TiposIA

    -- Clasificación del desempeño 
    clasificar :: Experimento -> Desempeno
    clasificar exp 
        | precision exp >= 0.95 = Excelente
        | precision exp >= 0.85 = Bueno
        | precision exp >= 0.75 = Regular 
        | otherwise             = Deficiente

    -- Suma de épocas 
    sumarEpocas :: [Experimento] -> Int
    sumarEpocas []=0
    sumarEpocas (x:xs)= epocas x + sumarEpocas xs

    -- Promedio de precision 
    contarExperimentos :: [Experimento] -> Int 
    contarExperimentos []=0
    contarExperimentos(_:xs) = 1 +contarExperimentos xs 

    sumarPrecision :: [Experimento] -> Float 
    sumarPrecision []= 0.0
    sumarPrecision (x:xs) = precision x + sumarPrecision xs

    promedioPrecision :: [Experimento] -> Float
    promedioPrecision []= 0.0
    promedioPrecision lista = sumarPrecision lista / fromIntegral (contarExperimentos lista)

    -- Modelo con mejor precisión 
    mejorModelo :: [Experimento] -> Experimento
    mejorModelo [x] = x 
    mejorModelo (x:xs)
        | precision x >= precision mejor = x
        | otherwise = mejor
        where mejor = mejorModelo xs

    -- Filtrado por umbral
    filtrarUmbral :: Float -> [Experimento] -> [Experimento]
    filtrarUmbral umbral lista = [x | x <- lista, precision x >= umbral]