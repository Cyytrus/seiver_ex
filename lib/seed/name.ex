defmodule Seiver.Seed.Name do
  @first_names [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Eve",
    "Frank",
    "Grace",
    "Heidi",
    "Isaac",
    "Judy"
  ]

  @last_names [
    "Smith",
    "Johnson",
    "Williams",
    "Jones",
    "Brown",
    "Davis",
    "Miller",
    "Wilson",
    "Moore",
    "Taylor"
  ]

  def generate do
    first_name = Enum.random(@first_names)
    last_name = Enum.random(@last_names)

    "#{first_name} #{last_name}"
  end
end
