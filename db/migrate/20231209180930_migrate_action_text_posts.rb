class MigrateActionTextPosts < ActiveRecord::Migration[7.0]
  def change
    say_with_time 'Migrating ActionText rich text to Post body' do
      Post.find_each do |post|
        action_text_record = ActionText::RichText.find_by(record: post, name: 'body')
        post.update(body: action_text_record&.to_trix_html)
      end
    end
  end
end
