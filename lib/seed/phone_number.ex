defmodule Seiver.Seed.PhoneNumber do
  @area_code [
    "34",
    "37",
    "21",
    "84",
    "11",
    "51",
    "71",
    "61",
    "62",
    "65"
  ]

  def generate do
    area_code = Enum.random(@area_code)
    prefix = Enum.random(1000..9999)
    suffix = Enum.random(1000..9999)

    "+55#{area_code}9#{prefix}#{suffix}"
  end
end
