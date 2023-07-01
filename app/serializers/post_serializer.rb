class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :tags
  
  belongs_to :author
  has_many :tags

  def short_content
    "#{self.object.content[0..40]}..."
  end
end
