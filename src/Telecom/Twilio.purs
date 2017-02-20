module Telecom.Twilio
  ( TWILIO
  , Client
  , Credentials
  , connect
  ) where

import Control.Monad.Eff (Eff)

foreign import data TWILIO :: Effect
foreign import data Client :: Type

type Credentials =
  { accountSid :: String
  , authToken  :: String
  }

foreign import connect
  :: ∀ eff
   . Credentials
  -> Eff (twilio :: TWILIO | eff) Client
