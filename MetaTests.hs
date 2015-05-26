module MetaTests where

import Graphics.ShinyUI (FrameType, FrameElement)
import Test.Hspec

main :: IO ()
main = hspec $ do
 
  describe "Validate haqify function" $ do
    it "just should compile" $ do
    	let (ShinyUI () (FrameConfiguration Frame elems)) in elems `shouldBe` [Label "One", Button "Ok"]

----- implementation details

class PlatformSpecificInterface a where
	refresh :: IO ()

data PlatformSpecificInterfaceWin

instance PlatformSpecificInterface PlatformSpecificInterfaceWin where
	refresh = return () 

test :: ShinyUI ()
test = do
	label "One"
	button "Ok"

----- lib user interface


--data EventState

--data EventSequence

--data EventTransaction

--data EventPrecondition
{-
window $ do
	label "Hello world"
	button "OK"
	button "Cancel"
-}
