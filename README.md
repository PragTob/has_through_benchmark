# Has Many Through Benchmark

A simple benchmark as the topic came up multiple times of performance on a 
`has_many through:` versus directly attaching models to each other.

Benchmark is in the `benchmark` folder, just run it via `rails runner 
benchmark/has_many_through`, after you did a `bundle install` and `rake 
db:create db:reset` of course, though.