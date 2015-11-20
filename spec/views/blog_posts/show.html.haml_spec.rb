require 'rails_helper'

RSpec.describe "blog_posts/show", type: :view do
  before(:each) do
    @blog_post = assign(:blog_post, BlogPost.create!(
      :title => "MyText",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
