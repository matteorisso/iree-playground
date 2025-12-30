#map_1d_identity = affine_map<(m) -> (m)>

func.func @foo(
      %lhs : tensor<10xf32>,
      %rhs : tensor<10xf32>
    ) -> tensor<10xf32> {

  %result = linalg.generic {
    indexing_maps=[
      // Indexing maps for the parameters listed in `ins(...)`
      #map_1d_identity,
      // Indexing maps for the parameters listed in `outs(...)`
      #map_1d_identity
    ],
    iterator_types=["parallel"]
  } ins(%lhs : tensor<10xf32>)
    outs(%rhs : tensor<10xf32>)
  {
    ^bb0(%lhs_entry : f32, %rhs_entry : f32):
      %add = arith.addf %lhs_entry, %rhs_entry : f32
      linalg.yield %add : f32
  }
  -> tensor<10xf32>

  return %result : tensor<10xf32>
}