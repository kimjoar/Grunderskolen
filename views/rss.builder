xml.instruct! :xml, :version => '1.0'
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "En sommer i Silicon Valley!"
    xml.description "Om min sommer i Silicon Valley som Gründerskole-student."
    xml.link "http://gs.kimjoar.net/"

    @posts.each do |post|
      xml.item do
        xml.title post.title
        xml.link "http://gs.kimjoar.net/post/#{post.slug}"
        xml.description post.body
        xml.pubDate Time.parse(post.date.to_s).rfc822()
        xml.guid "http://gs.kimjoar.net/post/#{post.slug}"
      end
    end
  end
end