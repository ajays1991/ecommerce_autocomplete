class ProductsIndex < Chewy::Index
	settings analysis: {
		filter: {
			edge_n_gram_filter: {
				type: 'ngram',
		        min_gram: 3,
		        max_gram: 10,
		        token_chars: [
		        	'letter',
		        	'digit'
		        ]
			},
			synonym_filter: {
				type: 'synonym',
				synonyms: [
					"universe, cosmos",
					"pants, jeans",
					"applephone, iphone",
					"computer, laptop",
					"apple, iphone"
				]
			},
			word_delimeter_filter: {
				type: 'word_delimiter',
				generate_word_parts: true,
				generate_number_parts: true,
				catenate_words: true,
				catenate_numbers: true,
				catenate_all: true,
				split_on_case_change: true,
				preserve_original: true,
				stem_english_possessive: true
			}
		},
    	analyzer: {
      		autocomplete_edge_n_gram_analyzer: {
        		tokenizer: 'whitespace',
        		filter: ['lowercase', 'edge_n_gram_filter']
      		},
      		autcomplete_synonym_analyzer: {
      			tokenizer: 'whitespace',
      			filter: ['lowercase', 'synonym_filter']
      		},
      		autocomplete_word_delimiter_analyzer: {
      			tokenizer: 'whitespace',
      			filter: ['lowercase', 'synonym_filter']
      		},
      		lower_keyword_autocomplete: {
      			tokenizer: 'keyword',
      			filter: ["lowercase"]
      		}
    	}
  	}


  	define_type Product.all.includes(:category) do
	    field :name, type: 'text', fields: { lower_keyword_analyzed: { type: 'text', analyzer: 'lower_keyword_autocomplete'} ,standard_analyzed:{ type: 'text', analyzer: 'standard'} ,synonym_analyzed: { type: 'text', analyzer: 'autcomplete_synonym_analyzer' }, edge_n_gram_analyzed: { type: 'text', analyzer: 'autocomplete_edge_n_gram_analyzer' }, word_delimiter_analyzed: { type: 'text', analyzer: 'autocomplete_word_delimiter_analyzer' } }
	    field :description, type: 'keyword'
	    field :category, value: ->(product) { product.category.name }, analyzer: 'lower_keyword_autocomplete'
	    field :price, type: 'long'
	    field :created, type: 'date', value: ->{ created_at }
  	end
end