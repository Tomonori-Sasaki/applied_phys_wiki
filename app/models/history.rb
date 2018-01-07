class History < ApplicationRecord
  validates :word, presence: true
  validates :word, length: { maximum: 15 }
  validates :name, presence: true
  validates :examination, presence: true
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      History.where(['name LIKE ?', "%#{search}%"]).or(History.where(['word LIKE ?', "%#{search}%"])).or(History.where(['date LIKE ?', "%#{search}%"]))
    else
      History.all #全て表示。
    end
  end
end
