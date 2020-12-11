defmodule PriceMonitoring do
  @moduledoc """
  Documentation for `PriceMonitoring`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> PriceMonitoring.hello()
      :world

  """
  def start() do
    urls = [
      "https://www.hemnet.se/bostad/lagenhet-2rum-solna-centrum-solna-kommun-centrumslingan-45,-4tr-17116400",
      "https://www.hemnet.se/bostad/lagenhet-1,5rum-centrala-solna-solna-kommun-klippgatan-12c,-4-tr-17141535",
      "https://www.booli.se/annons/4060796",
      "https://www.booli.se/annons/4060561",
      "https://www.booli.se/annons/4060535"
    ]

    Crawly.Engine.start_spider(Spider, urls: urls, crawl_id: "123")
  end

  def stop() do
    Crawly.Engine.stop_spider(Spider)
  end
end
