class AddWorkerIdToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :post_id,:integer
  end
end
