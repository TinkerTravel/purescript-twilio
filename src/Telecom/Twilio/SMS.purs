module Telecom.Twilio.SMS
  ( Message
  , MessageAck
  , messageAckStatus
  , sendMessage
  ) where

import Control.Monad.Aff (Aff)
import Telecom.Twilio (Client, TWILIO)

type Message =
  { body :: String
  , from :: String
  , to   :: String
  }

foreign import data MessageAck :: Type
foreign import messageAckStatus :: MessageAck -> String

foreign import sendMessage
  :: ∀ eff
   . Client
  -> Message
  -> Aff (twilio :: TWILIO | eff) MessageAck
