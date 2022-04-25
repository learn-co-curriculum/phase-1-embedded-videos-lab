require 'pry'

RSpec.describe 'index.html' do
  it 'contains an <video> tag' do
    video = parsed_html.search('video')[0]
    expect(video).to_not be_nil, "No <video> tag was found"
    expect(!!video.attributes["controls"]).to be == true, "Include a controls attribute"
  end

  context 'within <video>' do
    it 'contains an "autoplay" attribute' do
      video = parsed_html.search('video')[0]
      expect(video.attributes["autoplay"]).to_not be_nil, "No autoplay attribute was found in the video"
    end

    it 'contains an "controls" attribute' do
      video = parsed_html.search('video')[0]
      expect(video.attributes["controls"]).to_not be_nil, "No controls attribute was found in the video"
    end

    it 'contains a "width" attribute set to "600" ' do
      video = parsed_html.search('video')[0]
      expect(video.attributes["width"]).to_not be_nil, "No width attribute was found in the video"
      expect(video.attributes["width"].value).to eq("600"), "The width attribute should be set to '600'"
    end

    it 'contains a "height" attribute set to "400" ' do
      video = parsed_html.search('video')[0]
      expect(video.attributes["height"]).to_not be_nil, "No height attribute was found in the video"
      expect(video.attributes["height"].value).to eq("400"), "The height attribute should be set to '400'"
    end

    it 'contains an "autoplay" attribute' do
      video = parsed_html.search('video')[0]
      expect(video.attributes["autoplay"]).to_not be_nil, "No autoplay attribute was found in the video"
    end

    it 'contains two nested source tags' do
      video = parsed_html.search('video')[0]
      expect(video.children[0].name).to_not be_nil, "No source tag was found nested within the video tag"
      expect(video.children[0].attributes["src"]).to_not be_nil, "No src attribute found on the first source tag"
      expect(video.children[0].attributes["type"].value).to be == "video/mp4", "The first source tag should have type set to 'video/mp4'"
      expect(video.children[0].children[0].name).to_not be_nil, "No second source tag was found nested within the video tag"
      expect(video.children[0].children[0].attributes["src"]).to_not be_nil, "No src attribute found on the second source tag"
      expect(video.children[0].children[0].attributes["type"].value).to be == "video/ogg", "The second source tag should have type set to 'video/ogg'"

    end
  end


end
