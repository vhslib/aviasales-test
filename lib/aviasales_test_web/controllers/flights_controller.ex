NimbleCSV.define(MyParser, separator: ",", escape: "\"")

defmodule AviasalesTestWeb.FlightsController do
  use AviasalesTestWeb, :controller

  def index(conn, %{"id" => id}) do
    flights = File.read!("priv/flights.csv") |> MyParser.parse_string |> Enum.map(fn x -> List.to_tuple(x) end)
    flight = List.keyfind(flights, id, 0)

    {
      _id,
      _origin,
      _destination,
      _departure_date,
      departure_time,
      _arrival_date,
      arrival_time,
      number
    } = flight

    json(conn, %{departure_time: departure_time, arrival_time: arrival_time, number: number})
  end
end
