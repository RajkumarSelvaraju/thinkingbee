class Description < ActiveRecord::Base

	belongs_to :descripable, :polymorphic => true
end
