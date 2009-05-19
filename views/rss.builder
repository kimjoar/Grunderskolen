xml.instruct! :xml, :version => '1.0'
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Kim Joar Bekkelund - Gründerskolen 2009, San Francisco"
    xml.description "Om min sommer i San Francisco som Gründerskole-student."
    xml.link "http://gs.kimjoar.net/"

    @posts.each do |post|
      print post
      xml.item do
        xml.title post.heading
        xml.link "http://gs.kimjoar.net/post/#{post.basename}"
        xml.description post.text
        xml.pubDate Time.parse(post.date.to_s).rfc822()
        xml.guid "http://gs.kimjoar.net/post/#{post.basename}"
      end
    end
  end
end