require 'pry'

RSpec.describe 'index.html' do
  it 'contains an <iframe> tag' do
    video = parsed_html.search('video')[0]
    expect(video).to_not be_nil, "No <video> tag was found"
    binding.pry
    expect(!!video.attributes["controls"]).to be true, "Include a controls attribute"
  end

  context 'within <video>' do
    # it 'contains a "width" attribute set to "100%" ' do
    #   iframe = parsed_html.search('iframe')[0]
    #   expect(iframe.attributes["width"]).to_not be_nil, "No width attribute was found in the iframe"
    #   expect(iframe.attributes["width"].value).to eq("100%"), "The width attribute should be set to '100%'"
    # end
    #
    # it 'contains a "height" attribute set to "400px" ' do
    #   iframe = parsed_html.search('iframe')[0]
    #   expect(iframe.attributes["height"]).to_not be_nil, "No height attribute was found in the iframe"
    #   expect(iframe.attributes["height"].value).to eq("400px"), "The height attribute should be set to '400px'"
    # end
    #
    # it 'contains a "frameborder" attribute set to "1" ' do
    #   iframe = parsed_html.search('iframe')[0]
    #   expect(iframe.attributes["frameborder"]).to_not be_nil, "No frameborder attribute was found in the iframe"
    #   expect(iframe.attributes["frameborder"].value).to eq("1"), "The frameborder attribute should be set to '1'"
    # end

  end


end
