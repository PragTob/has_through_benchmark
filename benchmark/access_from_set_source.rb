Benchmark.ips do |benchmark|

  source = Source.find 5_000

  benchmark.report "Direct acces of attacheds:" do
    source.directly_attacheds.to_a
  end

  benchmark.report "Indirect access attacheds:" do
    source.attacheds.to_a
  end

  benchmark.compare!
end