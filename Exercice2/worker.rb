# Classe metier 

class Worker
	def initialize(tache, lien)
		@tache = tache
		@lien = lien
		
	end

	def tache
		@tache
		
	end

	def lien
		@lien
		
	end
	
	def toJson

		{tache: tache, lien: lien}.to_json
		
	end
		
	
end