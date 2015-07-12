Benchmark.ips do |benchmark|

  source = Source.find 50_000

  benchmark.report "Direct acces of one:" do
    source.directly_attacheds.to_a
  end

  benchmark.report "Indirect access from one:" do
    source.attacheds.to_a
  end

  benchmark.compare!
end