defmodule Seiver.Seed.Message do
  @messages [
    "Hello, world!",
    "Goodbye, world!",
    "How are you?",
    "I'm fine, thank you.",
    "I'm sorry.",
    "I love you.",
    "I hate you.",
    "@coproduto hire me please!"]

  def generate do
    Enum.random(@messages)
  end
end
