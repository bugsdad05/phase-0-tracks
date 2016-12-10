			#@reindeer_ranking.insert(-1,@reindeer_ranking.delete_at(idx) )
			#@reindeer_ranking.insert(-1,@reindeer_ranking[idx] )
			#@reindeer_ranking.delete_at(idx)
			#pariah = @reindeer_ranking.delete_at(idx)
			#@reindeer_ranking << pariah
			@reindeer_ranking << @reindeer_ranking.delete_at(idx)