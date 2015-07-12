Benchmark.ips do |benchmark|

  RANGE = (0...100_000)
  benchmark.report "direct access from a random source" do
    Source.find(rand(RANGE)).directly_attacheds.to_a
  end

  benchmark.report "indirect access from a random source" do
    Source.find(rand(RANGE)).attacheds.to_a
  end

  benchmark.compare!
end