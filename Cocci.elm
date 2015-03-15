import List
import Color (..)
import Graphics.Collage (..)
import Graphics.Element (..)

main : Element
main = collage 400 400 [ scale 2 <| traced (solid blue) (conver disegno)]

conver : List (Float,Float) -> Path
conver ls = path <| tr <| List.map (\(x,y) -> (10*x,10*y)) <| (0,0)::ls

tr : List (Float, Float) -> List (Float, Float)
tr ls = 
    case ls of
    (x,y) :: (z,w) :: rest -> (x,y) :: tr ((x+z,y+w) :: rest)
    _ -> ls

disegno :  List (Float,Float)


disegno = [  ( 2,  2)
           , ( 2, -2)
           , ( 0, -3)
          ]
