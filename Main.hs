import System.Environment
import System.IO  
import Control.Monad
import System.Random
import QuickSort


convert_list :: [String] -> [Int]
convert_list = map read
getLines = liftM lines . readFile


main = do  
        (filepath:args) <- getArgs
        seed <- newStdGen
        list <- getLines filepath
        let list' = convert_list list in
          print $ quick_sort list'
          -- implementation 2: print $ quick_sort list' seed
          -- implementation 3: print $ quick_sort list' seed (length list')
