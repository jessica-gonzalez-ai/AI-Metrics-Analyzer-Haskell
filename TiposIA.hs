-- González Heredia Jessica Naomi -C24310827 
module TiposIA where 

    -- a) un registro para representar un experimento 
    data Experimento = Experimento {
        modelo :: String,
        precision :: Float,
        perdida :: Float,
        epocas :: Int
    } deriving (Show)

    -- b) un tipo de dato para clasificar el desempeño 
    data Desempeno = Excelente | Bueno | Regular | Deficiente 
        deriving (Show,Eq)