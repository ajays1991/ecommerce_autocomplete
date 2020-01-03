module Search
  class ElasticSearch
    def search(q)
      search_query = {
        bool: {
          should: [
            {
              term: {
                "name.lower_keyword_analyzed" => {
                  value: q,
                  boost: 2000
                }
              }
            },
            {
              term: {
                "name.synonym_analyzed" => {
                  value: q,
                  boost: 1500
                }
              }
            },
            {
              match: {
                "name.fuzzy_analyzed" => {
                  query: q,
                  fuzziness: 2,
                  prefix_length: 3,
                  boost: 1000
                }
              }
            },
            {
              match: {
                "name.synonym_analyzed" => {
                  query: q,
                  fuzziness: 2,
                  prefix_length: 3,
                  boost: 1000
                }
              }
            },
            {
              term: {
                "name.edge_n_gram_analyzed" => {
                  value: q,
                  boost: 1000
                }
              }
            },
            {
              term: {
                "name.word_delimiter_analyzed" => {
                  value: q,
                  boost: 500
                }
              }
            },
          ]
        }
      }
      ProductsIndex::Product.query(search_query)
    end
  end
end
