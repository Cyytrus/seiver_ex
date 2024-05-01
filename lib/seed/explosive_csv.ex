defmodule Seiver.Seed.ExplosiveCsv do
  alias Seiver.Seed.{Name, PhoneNumber, Message}

  @headers ["name", "receiver_phone_number", "message", "sender_phone_number", "requested_at"]

  def kabuum(quantity_of_records) do
    Stream.map(1..quantity_of_records, fn _ ->
      build_map()
    end)
    |> Stream.chunk_every(quantity_loader(quantity_of_records))
    |> Task.async_stream(fn chunk ->
      str =
        chunk
        |> CSV.encode(headers: @headers)
        |> Enum.to_list()

      File.write("./explosive.csv", str, [:append])

    end, max_concurrency: System.schedulers_online())
    |> Stream.run()
  end

  def build_map do
    %{
      "name" => Name.generate(),
      "receiver_phone_number" => PhoneNumber.generate(),
      "message" => Message.generate(),
      "sender_phone_number" => PhoneNumber.generate(),
      "requested_at" => epoch_now()
    }
  end

  defp epoch_now() do
    DateTime.utc_now()
    |> DateTime.to_unix()
    |> Integer.to_string()
  end

  defp quantity_loader(quantity) do
    case quantity do
      q when q > 100_000 and q <= 10_000_000 ->
        div(q, 1000)

      q when q > 1000 and q <= 100_000 ->
        div(q, 100)

      q when q <= 1000 ->
        q
    end
  end
end
