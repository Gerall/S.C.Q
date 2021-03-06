class TipoDocumento < ActiveRecord::Base

  has_many :quejas 

  attr_accessible :descripcion, :sigla

  validates_presence_of :descripcion

  validates_presence_of :sigla
 
    #buscador
    def self.search(search)
		where('sigla like ? or descripcion like ?', "%#{search}%", "%#{search}%" )
	end

	
end
