-- González Heredia Jessica Naomi -C24310827 

module ArchivoIA where 

    import System.IO
    import TiposIA 

    convertirLinea :: String -> Experimento
    convertirLinea linea = 
        let [modStr, precStr, perdStr, epocStr]= words linea 
        in Experimento modStr (read precStr) (read perdStr) (read epocStr)

    convertirTexto :: String ->[Experimento]
    convertirTexto contenido = [convertirLinea renglon | renglon <- lines contenido]

    -- Leyendo el archivo 
    leerArchivo :: String -> IO [Experimento]
    leerArchivo ruta = do 
        contenido <- readFile ruta 
        return (convertirTexto contenido)

    -- Generar el reporte 
    generarReporte :: String -> String -> IO ()
    generarReporte ruta contenido = writeFile ruta contenido