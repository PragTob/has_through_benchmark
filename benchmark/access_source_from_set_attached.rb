Benchmark.ips do |benchmark|

  directly_attached = DirectlyAttached.find 150_000

  benchmark.report "DirectlyAttached acces to source:" do
    directly_attached.source
  end

  attached = Attached.find 150_000

  benchmark.report "Indirectly Attached access to source:" do
    attached.intermediary.source
  end

  benchmark.compare!
end