Benchmark.ips do |benchmark|

  RANGE = (0...300_000)

  benchmark.report "random DirectlyAttached to source:" do
    DirectlyAttached.find(random(RANGE)).source
  end

  attached = Attached.find 150_000

  benchmark.report "random indirect Attached access to source:" do
    Attached.find(random(RANGE)).intermediary.source
  end

  benchmark.compare!
end